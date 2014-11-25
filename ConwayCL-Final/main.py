import pyopencl as cl
import numpy as np
import scipy as sp
from scipy import misc
from scipy import ndimage
from scipy.misc import lena
import random as r
import datetime as date
import time 
from PIL import Image
import os
import tkFileDialog as tfd
from Tkinter import Tk
import pygame
import OpenGL.GL as gl
from pygame.locals import *

#Don't truncate printed arrays
np.set_printoptions(threshold=np.nan)

"""
###########################
###########################
"""

class RenderGL:
	def __init__(self, myCL, dimen):
		self.SCREEN_SIZE = dimen
		self.arraySize = myCL.a.shape
		#Set the initial size for the generative/host array
		self.grid_w = self.arraySize[0]
		self.grid_h = self.arraySize[1]
		
		#initialise both buffer to 0 in x,y
		self.current_grid = np.where(myCL.a!=0, 255, 0)

	def initTexture(self):

		#data = np.flipud(lena()) #insert test data
		
		#Set the data source
		data = self.current_grid
		w,h = data.shape

		# generate a texture id
		self.mytexture = gl.glGenTextures(1)
		
		#bind? the tex id and some implicit thing?
		gl.glBindTexture(gl.GL_TEXTURE_3D,self.mytexture)

		# texture mode and parameters controlling wrapping and scaling
		#gl.glTexEnvf( gl.GL_TEXTURE_ENV, gl.GL_TEXTURE_ENV_MODE, gl.GL_MODULATE )
		#gl.glTexParameterf( gl.GL_TEXTURE_2D, gl.GL_TEXTURE_WRAP_S, gl.GL_REPEAT )
		#gl.glTexParameterf( gl.GL_TEXTURE_2D, gl.GL_TEXTURE_WRAP_T, gl.GL_REPEAT )
		gl.glTexParameterf( gl.GL_TEXTURE_2D, gl.GL_TEXTURE_MAG_FILTER, gl.GL_NEAREST ) #close up
		gl.glTexParameterf( gl.GL_TEXTURE_2D, gl.GL_TEXTURE_MIN_FILTER, gl.GL_NEAREST ) #Far away
		#gl.GL_LINEAR
		#gl.GL_NEAREST

		# map the image data to the texture. note that if the input
		# type is GL_FLOAT, the values must be in the range [0..1]
		gl.glTexImage2D(gl.GL_TEXTURE_2D,0,gl.GL_RGB,w,h,0,
		    gl.GL_LUMINANCE,gl.GL_UNSIGNED_BYTE,data)


	def initStage(self,w,h):
		# set the viewport and projection
		gl.glViewport(0,0,w,h)
		gl.glMatrixMode(gl.GL_PROJECTION)
		gl.glLoadIdentity()

		#Perspectives/layouts
		#L,R,B,T,?,?
		#gl.glOrtho(-0.1, 1.1,	-0.1, 1.1,	 0,1)
				
		"""offset = 0.5
		x1 = offset+1
		x2 = (x1 - 1) *-1
		y1 = offset+1
		y2 = (x1 - 1) *-1
		gl.glOrtho(x2,x1,y2,y1, 0,1)"""

		#no idea what this is for
		gl.glMatrixMode(gl.GL_MODELVIEW)
		gl.glLoadIdentity()

		# enable textures, bind to our texture
		gl.glEnable(gl.GL_TEXTURE_2D)


	def changeOrtho(self, offset):
		x1 = offset+1
		x2 = (x1 - 1) *-1 
		y1 = offset+1
		y2 = (x1 - 1) *-1

		gl.glOrtho(x2,x1,y2,y1, 0,1)


	def doDraw(self,w,h,xoff,yoff):
		# draw a quad
		gl.glBegin( gl.GL_QUADS )
		gl.glTexCoord2f( 0+xoff, 1+yoff );    gl.glVertex3f( 0, 1, self.z )
		gl.glTexCoord2f( 0+xoff, 0+yoff );    gl.glVertex3f( 0, 0, self.z )
		gl.glTexCoord2f( 1+xoff, 0+yoff );    gl.glVertex3f( 1, 0, self.z )
		gl.glTexCoord2f( 1+xoff, 1+yoff );    gl.glVertex3f( 1, 1, self.z )
		gl.glEnd(  )

	def calcOffsets(self,w,h,pm,lm):
#					Mouse Pos        screen:scroll  centre
		ox = ( float((pm[0])	*-1)	/(w*0.5) ) + 1
		oy = ( float((pm[1])	)		/(h*0.5) ) + 1

		return (ox,oy)

	def doRender(self, pmouse, last_pm):
		#Do a full gl render cycle
		gl.glClear(gl.GL_COLOR_BUFFER_BIT | gl.GL_DEPTH_BUFFER_BIT)
		GLR.initStage(GLR.SCREEN_SIZE[0],GLR.SCREEN_SIZE[1])
		GLR.changeOrtho(myOrtho)
		GLR.initTexture()
		
		offs = GLR.calcOffsets( GLR.SCREEN_SIZE[0], GLR.SCREEN_SIZE[1], pmouse, last_pm)

		GLR.doDraw(GLR.SCREEN_SIZE[0],GLR.SCREEN_SIZE[1], offs[0], offs[1])


"""
###########################
###########################
"""

class CL:
	def __init__(self):
		self.ctx = cl.create_some_context()
		self.queue = cl.CommandQueue(self.ctx)
		self.tickState = False

	#Load kernel file and load as internal program
	def loadProgram(self, filename):
		#read in the OpenCL source file as a string
		f = open(filename, 'r')
		fstr = "".join(f.readlines())
		f.close()
		#print fstr
		#create the program
		return cl.Program(self.ctx, fstr).build()

	#Load last configuration
	def loadConfig(self, filename):
		#read
		f = open(filename, 'r')
		fstr = "".join(f.readlines())
		return fstr

	#initialize host side (CPU) arrays
	def initHostArrays(self, res_expo):
		#Use ar_ySize below to increase the worldspace, should be a power of 2
		self.ar_ySize = np.int32(2**res_expo)
		#-------------------------------------------
		self.a = np.ones((self.ar_ySize,self.ar_ySize), dtype=np.int32)

	#Create the cl buffers
	def initBuffers(self):
		mf = cl.mem_flags

		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.b_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernel, swapping/transitioning cell states between buffer a & b
	def execute(self):
		if self.tickState == False:
			self.kAutomata.RunAutomata(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.b_buf)
		else:
			self.kAutomata.RunAutomata(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.a_buf)
		
		self.tickState = not self.tickState



	#Read from GPU buffer to host's array (self.a)
	def getData(self):
		if self.tickState == False:
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
		else:
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
			
		

	#Seed, fill buffer
	def seed(self, seedRand):
		#select random seed for the fill
		np.random.seed(r.randint(0,100000))
		seedAr = np.random.randint(seedRand, size=(self.ar_ySize, self.ar_ySize))

		#Limit it to 1s and 0s, then assign it
		seedAr = np.where(seedAr==1, 1, 0)
		self.a = np.int32(seedAr)

	#Seed from image
	def loadImg(self, seedImage):
		img = np.array(Image.open(seedImage))
		img2 = np.where(img != 0, 1, 0)
		self.a = np.int32(img2)

	#Print the output array
	def render(self):
		print self.a

	#Write Bitmap File Render
	def bitRender(self, rn, zoom, CLMAXVAL):
		name = "Out/"+"image" + str(rn)
		sp.misc.imsave(name + '.bmp', sp.ndimage.zoom(np.where(MainCL.a!=0, 255, 0), zoom, order=0))



"""
###########################
###########################
"""


#----------------------------------------------------------
#-------------------- Entry Point -------------------------
#----------------------------------------------------------

if __name__ == "__main__":
	MainCL = CL()
	MainCL.kUtil = MainCL.loadProgram("KernelUtils.cl")

	#For hiding unused GUI
	fauxgui = Tk()
	fauxgui.withdraw()
	
	
	#--- Preset Configuration -------------

	res_expo = 10	
	seed_strength = 3
	renderEvery = 1
	image_magnification = 1
	bitmap_render = 0
	seed_bitmap_image = "null"
	CLMAXVAL = 8
	SCR_DIMS = (1024,1024)

	#----------------------------------------------------------
	#--------------USER INPUT & CONFIG-------------------------
	#----------------------------------------------------------
	last_config = MainCL.loadConfig("Last_Config")
	vetoConfig = False

	list = [item for item in last_config.split(',') if item.strip()]
	
	#replay last config?
	uinput = raw_input("  > Replay last custom configuration? (Y/N): ")
	if uinput != "" and uinput != "n" and uinput != "N":
		#Overrite the defaults
		res_expo = 				int(list[0])
		ruleFName = 			list[1]
		seed_bitmap_image = 	list[2]
		seed_strength = 		int(list[3])
		renderEvery = 			int(list[4])
		image_magnification = 	int(list[5])
		bitmap_render = 		int(list[6])
		
		vetoConfig = True

	
	
	
	if(not vetoConfig):
		uinput = raw_input("  > (Int) [2 ^ " + str(res_expo) + " = " + str(2**res_expo) + "] Resolution: 2 to the power of: ")
		if uinput != "":
			res_expo = int(uinput)

	#Set the resolution
	MainCL.initHostArrays(res_expo)

	if(not vetoConfig):
		#Have the user select one of the kernel automata rules
		ruleFName = tfd.askopenfilename(initialdir="./RuleKernels", title="Select Kernel Rule (*.cl)")

	#Load the selected kernel
	print "  > LOADING KERNEL..."
	MainCL.kAutomata = MainCL.loadProgram(ruleFName)
	print "  > Done!"

	if vetoConfig and seed_bitmap_image != "null":
		MainCL.loadImg(seed_bitmap_image) 
	else :
		#Randomly seed host array
		MainCL.seed(seed_strength)
	
	if(not vetoConfig):
			
		usePreset = raw_input("  > Use preset configuration? (Y/N): ")
		if usePreset == "N" or usePreset == "n":
			#Query user about seeding the initial cell configurations
			SeedType = raw_input("  > Seed from bitmap file? (Y/N): ")
			if SeedType != "" and SeedType != "n" and SeedType != "N":
				#Seed from image
				seed_bitmap_image = tfd.askopenfilename(initialdir="./SeedImages", title="Select Seeding-Image File (*.bmp)")
				MainCL.loadImg(seed_bitmap_image) 
			else:
				#Seed Strength
				uinput = raw_input("  > (Int) [" + str(seed_strength) + "] Enter random seed strength (1/x): ") 
				if uinput != "":
					seed_strength = int(uinput)

			#render every x frames
			uinput = raw_input("  > (Int) [" + str(renderEvery) + "] Render every x frames: ")
			if uinput != "":
				renderEvery = int(uinput)

			uinput = raw_input("  > Render as bitmap files? (Y/N): ")
			if uinput != "" and uinput != "n" and uinput != "N":
				bitmap_render = 1
			
			uinput = raw_input("  > (Int) [" + str(image_magnification) + "] Magnify rendered bitmap pixels by: ")
			if uinput != "":
				image_magnification = int(uinput)

			uinput = raw_input("  > Save configuration? (Y/N): ")
			if uinput != "" and uinput != "n" and uinput != "N":

				#Save presets
				sOut = str(res_expo) + ","
				sOut += ruleFName + "," 
				sOut += seed_bitmap_image + "," 
				sOut += str(seed_strength) + "," 
				sOut += str(renderEvery) + "," 
				sOut += str(image_magnification) + "," 
				sOut += str(bitmap_render)
				
				#Write file
				config_file = open("Last_Config", "w")
				config_file.write(sOut)
				config_file.close()
				
			

	#----------------------------------------------------------
	#-------------- END USER INPUT & CONFIG--------------------
	#----------------------------------------------------------


	#-----
	# Begin main program loop	
	#-----

	print "  > Begin OpenGL render"

	GLR = RenderGL(MainCL, SCR_DIMS)
	pygame.init()
	screen = pygame.display.set_mode(GLR.SCREEN_SIZE, HWSURFACE|OPENGL|DOUBLEBUF)
	clock = pygame.time.Clock()    
	done = False

	#Set & render the initial stage
	GLR.z = 0
	GLR.initStage(GLR.SCREEN_SIZE[0],GLR.SCREEN_SIZE[1])
	GLR.changeOrtho(1)
	GLR.initTexture()
	GLR.doDraw(GLR.SCREEN_SIZE[0],GLR.SCREEN_SIZE[1],0,0)

	myOrtho = 0
	pygmouse = (GLR.SCREEN_SIZE[0]/2,GLR.SCREEN_SIZE[1]/2)
	lastMousePos = pygmouse

	MainCL.initBuffers()
	renderNum = 0
	i = 0
	panNow = True
	#Let's do this for a while
	paused = False
	while done==False:
		
		#Pygame Event Handler
		for event in pygame.event.get():
			#print event.type
			if event.type == QUIT:
				done = True
			if event.type == KEYUP and event.key == K_ESCAPE:
				done = True
			if event.type == KEYUP and event.key == 114:
				if bitmap_render != 0:
					bitmap_render = 0
					print "Recording off"
				else:
					bitmap_render = 1
					print "Recording ON"
			if event.type == 5:
				if event.button == 4: #scrollup'
					myOrtho += -0.05 #zooom in
				if event.button == 5: #scrolldown
					myOrtho += 0.05 #zooom out
				#if event.button == 1: #Left Click
				#	panNow = not panNow
				if event.button == 3: #Right Click
					paused = not paused
				if event.button == 2: #Middle Click
					if seed_bitmap_image != "null":
						MainCL.loadImg(seed_bitmap_image)
					else:
						MainCL.seed(seed_strength)
					MainCL.initBuffers()
				if event.button == 9: #Forward Mouse
					ruleFName = tfd.askopenfilename(initialdir="./RuleKernels", title="Select Kernel Rule (*.cl)")
					print "  > LOADING KERNEL..."
					MainCL.kAutomata = MainCL.loadProgram(ruleFName)
					print "  > Done!"
					MainCL.initBuffers()
				if event.button == 8: #Back Mouse
					seed_bitmap_image = tfd.askopenfilename(initialdir="./SeedImages", title="Select Seeding-Image File (*.bmp)")
					MainCL.loadImg(seed_bitmap_image)
					MainCL.initBuffers()
				#print event.button
			if event.type == 6:
				if event.button == 1: #Release left
					#lastMousePos = pygame.mouse.get_pos()
					#print "snap:", lastMousePos
					panNow = True
				#print event.button
		
		#Min, max zoom corrector
		if myOrtho > 2:
			myOrtho = 2 #Out
		if myOrtho < -0.49:
			myOrtho = -0.49 #In

		#-----
		# Begin main program loop	
		#-----
		if not paused:
			i += 1
			#Run the CL
			MainCL.execute()
		
			#for every rendered CL frame
			if i % renderEvery == 0:
				MainCL.getData()
				#Bottleneck, get the data from CL
				GLR.current_grid = np.flipud(np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0))

				#np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 200), 0)
				

				i = 0 #reset time
			
				#Print out bitmap image
				if bitmap_render == 1:
					MainCL.bitRender(renderNum, image_magnification, CLMAXVAL)
					#Count the renders
					renderNum += 1
				
		

		#-----
		# End CL
		#-----
		
		#get mouse position for panning
		if panNow:
			pygmouse = pygame.mouse.get_pos()


		
		#Do the OpenGL render
		GLR.doRender(pygmouse, lastMousePos)
		
		#Refresh display
		pygame.display.flip()
		
		

	pygame.quit()