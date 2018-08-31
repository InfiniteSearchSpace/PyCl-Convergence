import pyopencl as cl
import numpy as np
import scipy as sp
from scipy import misc
from scipy import ndimage
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
		#2D causes epic memory leaks
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
		f = open(filename, 'r')
		return [line.strip() for line in f.readlines()]

	#initialize host side (CPU) arrays
	def initHostArrays(self, res_expo):
		#Use ar_ySize below to increase the worldspace, should be a power of 2
		self.ar_ySize = np.int32(2**res_expo)
		#-------------------------------------------
		self.a = np.zeros((self.ar_ySize,self.ar_ySize), dtype=np.int32)
		self.gameAr = np.zeros((self.ar_ySize,self.ar_ySize), dtype=np.int32)
		#self.offset = 0

	#Create the cl buffers
	def initBuffers(self):
		mf = cl.mem_flags

		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.b_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.render_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=np.zeros((self.ar_ySize,self.ar_ySize), dtype=np.int32))
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernel, swapping/transitioning cell states between buffer a & b
	def execute(self):
		if self.tickState == False:
			self.kAutomata.RunAutomata(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.b_buf) # np.int32(self.offset),
		else:
			self.kAutomata.RunAutomata(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.a_buf)

		self.tickState = not self.tickState
		#self.offset += 512


	#Build Render-layered frame
	def build_render(self):
		if self.tickState == False:
			self.kUtil.AddToBuffer(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.render_buf)
			self.kUtil.BuildFrame(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.render_buf, self.render_buf)
		else:
			self.kUtil.AddToBuffer(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.render_buf)
			self.kUtil.BuildFrame(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.render_buf, self.render_buf)

	#Build Render-layered frame
	def build_render_no_blur(self):
		if self.tickState == False:
			self.kUtil.ReplaceBuffer(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.render_buf)
			self.kUtil.BuildFrame(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.render_buf, self.render_buf)
		else:
			self.kUtil.ReplaceBuffer(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.render_buf)
			self.kUtil.BuildFrame(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.render_buf, self.render_buf)


	#Read from GPU buffer to host's array (self.a)
	def getData(self):
		if self.tickState == False:
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
		else:
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()


	#Read from GPU buffer to host's array (self.a)
	def getRenderData(self):
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.render_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()

	#Read from GPU buffer to host's array (self.a)
	def getGameState(self):
			self.kUtil.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.render_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.gameAr).wait()


	#Seed, fill buffer
	def seed(self, seedRand):
		#select random seed for the fill
		np.random.seed(r.randint(0,100000))
		seedAr = np.random.randint(seedRand, size=(self.ar_ySize, self.ar_ySize))

		#Limit it to 1s and 0s, then assign it
		seedAr = np.where(seedAr==1, 1, 0)
		self.a = np.int32(seedAr)

	#Return 0s array
	def zeroWorld(self):
		self.a = np.zeros((self.ar_ySize,self.ar_ySize), dtype=np.int32)


	#User Input - Place Square
	def place_square(self,x,y,size):
		#MainCL.getData()
		seedAr = self.a
		for xi in range(size):
			for yi in range(size):
				self.a[(xi+x)%(2**res_expo)][(yi+y)%(2**res_expo)] = 1
		self.a = np.int32(seedAr)
		#MainCL.initBuffers()

	#Seed from image
	def loadImg(self, seedImage):
		img = np.array(Image.open(seedImage))
		img2 = np.where(img != 0, 1, 0)
		self.a = np.int32(img2)

	#Print the output array
	def render(self):
		print self.a

	def saveSeedImage(self):
		sp.misc.imsave('SeedImage.bmp', sp.ndimage.zoom(np.where(MainCL.a!=0, 255, 0), 1, order=0))

	#Write Bitmap File Render
	def bitRender(self, rn, zoom, CLMAXVAL, colour_mode):
		name = "Out/"+"image" + str(rn)
		#sp.misc.imsave(name + '.bmp', sp.ndimage.zoom(np.where(MainCL.a!=0, 255, 0), zoom, order=0))
		#sp.misc.imsave(name + '.bmp', sp.ndimage.zoom(MainCL.a, zoom, order=0))

		#From live-rendering:
		#np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0)

		RGB_array = np.zeros((self.ar_ySize,self.ar_ySize,3), dtype=np.int32)

		if colour_mode == 0:
			RGB_array[:,:,0] = np.where(MainCL.a!=0, 255, 0)
			RGB_array[:,:,1] = np.where(MainCL.a!=0, 255, 0)
			RGB_array[:,:,2] = np.where(MainCL.a!=0, 255, 0)

		if colour_mode == 1:
			RGB_array[:,:,0] = np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0)
			RGB_array[:,:,1] = np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0)
			RGB_array[:,:,2] = np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0)

		if colour_mode == 2:
			RGB_array[:,:,1] = np.where(MainCL.a[:,:] !=0, 255, 0)
			RGB_array[:,:,2] = np.where(MainCL.a[:,:] !=0, 255, 0)

			RGB_array[:,:,0] = np.where(MainCL.a[:,:] >= 4, 255, RGB_array[:,:,0])
			RGB_array[:,:,1] = np.where(MainCL.a[:,:] >= 4, 0, RGB_array[:,:,1])
			RGB_array[:,:,2] = np.where(MainCL.a[:,:] >= 4, 0, RGB_array[:,:,2])

			RGB_array[:,:,0] = np.where(MainCL.a[:,:] >= 12, 0, RGB_array[:,:,0])
			RGB_array[:,:,1] = np.where(MainCL.a[:,:] >= 12, 255, RGB_array[:,:,1])
			RGB_array[:,:,2] = np.where(MainCL.a[:,:] >= 12, 0, RGB_array[:,:,2])

			RGB_array[:,:,0] = np.where(MainCL.a[:,:] >= 24, 0, RGB_array[:,:,0])
			RGB_array[:,:,1] = np.where(MainCL.a[:,:] >= 24, 0, RGB_array[:,:,1])
			RGB_array[:,:,2] = np.where(MainCL.a[:,:] >= 24, 255, RGB_array[:,:,2])

		if colour_mode == 3:

			RGB_array[:,:,0] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<50, 255-(MainCL.a*255)/(50), 55), 0))
			RGB_array[:,:,1] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<8, (MainCL.a*255)/(8), 55), 0))
			RGB_array[:,:,2] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<128, (MainCL.a*255)/128, 255), 0))

		if colour_mode == 4:

			RGB_array[:,:,0] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<50, 255-(MainCL.a*255)/(50), np.where(MainCL.a>355,(MainCL.a/3)%256,0)), 0))
			RGB_array[:,:,1] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<8, (MainCL.a*255)/(8), np.where(MainCL.a>127,(MainCL.a)%256,55)), 0))
			RGB_array[:,:,2] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<128, (MainCL.a*255)/128, np.where(MainCL.a>127,255-((MainCL.a/3)%256),55)), 0))

		if colour_mode == 5:

			RGB_array[:,:,0] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<50, 255-(MainCL.a*255)/(50), 0), 0))
			RGB_array[:,:,1] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<8, (MainCL.a*255)/(8), np.where(MainCL.a>99919,255-((MainCL.a/3)%256),np.where(MainCL.a>255,255-((MainCL.a/5)%256),np.where(MainCL.a>63,((MainCL.a)%256),0)))), 0))
			RGB_array[:,:,2] = np.where(MainCL.a == 1, 255, np.where(MainCL.a != 0, np.where(MainCL.a<128, (MainCL.a*255)/128, np.where(MainCL.a<256,255-((MainCL.a/3)%256),0)), 0))

		sp.misc.imsave(name + '.bmp', sp.ndimage.zoom(RGB_array, (zoom,zoom,1), order=0))

	#Reload kernel and reseed world
	def reseed(self):
		if seed_bitmap_image != "null":
			MainCL.loadImg(seed_bitmap_image)
		else:
			MainCL.seed(seed_strength)
		print "  > LOADING KERNEL..."
		MainCL.kAutomata = MainCL.loadProgram(ruleFName)
		print "  > Done!"
		MainCL.initBuffers()
		#self.offset = 2**22

	#Reload kernel and return empty world
	def reseed_zero(self):
		MainCL.zeroWorld()
		print "  > LOADING KERNEL..."
		MainCL.kAutomata = MainCL.loadProgram(ruleFName)
		print "  > Done!"
		MainCL.initBuffers()

	#Prompt user to select a rule
	def gui_kernel_select(self):
		ruleFName = tfd.askopenfilename(initialdir="./RuleKernels", title="Select Kernel Rule (*.cl)")
		print "  > LOADING KERNEL..."
		MainCL.kAutomata = MainCL.loadProgram(ruleFName)
		print "  > Done!"
		MainCL.initBuffers()
		return ruleFName

	#Hotkey Set Rule
	def setKernel(self, rulename):
		print "  > LOADING KERNEL..."
		MainCL.kAutomata = MainCL.loadProgram(rulename)
		print "  > Done!"
		MainCL.initBuffers()
		return rulename

    #Prompt user to select a seed image
	def gui_seedimage(self):
		seed_bitmap_image = tfd.askopenfilename(initialdir="./SeedImages", title="Select Seeding-Image File (*.bmp)")
		MainCL.loadImg(seed_bitmap_image)
		MainCL.initBuffers()
		return seed_bitmap_image



	#GPU Place Block
	#User Input - Place Square
	def place_square_GPU(self,x,y,size):
		#self.a[(xi+x)%(2**res_expo)][(yi+y)%(2**res_expo)] = 1
		if self.tickState == False:
			self.kUtil.PlaceBlock(self.queue, self.a.shape, None, self.ar_ySize, x, y, size, self.a_buf)
		else:
			self.kUtil.PlaceBlock(self.queue, self.a.shape, None, self.ar_ySize, x, y, size, self.b_buf)

	def place_square_filter_GPU(self,x,y,size):
		self.kUtil.PlaceBlock(self.queue, self.a.shape, None, self.ar_ySize, x, y, size, self.render_buf)

	def configUI(self, uBlock):
		self.mx = np.int32(uBlock[0])
		self.my = np.int32(uBlock[1])
		self.blockSize = np.int32(uBlock[2])


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

	MainCL.configUI((64,64,64))

	last_config = MainCL.loadConfig("Last_Config")
	playlist    = MainCL.loadConfig("RulePlaylist")
	vetoConfig  = False

	# list = [item for item in last_config.split(',') if item.strip()]
	# rule_playlist_ar = [item for item in playlist.split(',') if item.strip()]

	#replay last config?
	uinput = raw_input("  > Replay last custom configuration? (Y/N): ")
	if uinput != "" and uinput != "n" and uinput != "N":
		#Overrite the defaults
		res_expo            = int(last_config[0])
		ruleFName           = last_config[1]
		seed_bitmap_image   = last_config[2]
		seed_strength       = int(last_config[3])
		renderEvery         = int(last_config[4])
		image_magnification = int(last_config[5])
		bitmap_render       = int(last_config[6])

		vetoConfig = True


	if(not vetoConfig):
		uinput = raw_input("  > (Int) [2 ^ " + str(res_expo) + " = " + str(2**res_expo) + "] Resolution: 2 to the power of: ")
		if uinput != "":
			if int(uinput) < 16:
				res_expo = int(uinput)
			else:
				print "2 ^", int(uinput), "resolution is too large. 2^16 = ", 2**16, "x", 2**16, "pixels. You may disable this limit manually, just above this message in main.py"
				res_expo = 9

	#Set the resolution
	MainCL.initHostArrays(res_expo)

	if(not vetoConfig):
		#Have the user select one of the kernel automata rules
		ruleFName = tfd.askopenfilename(initialdir="./RuleKernels", title="Select Kernel Rule (*.cl)")

	#Load the selected kernel
	print "  > LOADING KERNEL..."
	MainCL.kAutomata = MainCL.loadProgram(ruleFName)
	print "  > Done!"

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


	if vetoConfig and seed_bitmap_image != "null":
		MainCL.loadImg(seed_bitmap_image)
	else :
		#Randomly seed host array
		MainCL.seed(seed_strength)

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
	panNow = False
	drawNow = False
	flipDrawNow = False
	#Let's do this for a while
	paused = False

	brush_size = 17

	use_filter = False

	show_ship = False
	shoot_now = False

	bullet_x = 0
	bullet_y = 0
	bullet_life = 0
	bullet_xv = 0
	bullet_yv = 0

	bullet_life_max = 24
	bullet_size = 2
	bullet_explosion = 24

	bulletStatsAr = [bullet_life_max,bullet_size,bullet_explosion]

	ship_scroll_weapon = 0

	ship_size = 12
	ship_x = (2**res_expo)/2
	ship_y = (2**res_expo)/2
	ship_xv1 = 0
	ship_yv1 = 0
	ship_xv2 = 0
	ship_yv2 = 0

	while done==False:

		pygmouse = pygame.mouse.get_pos()

		#Pygame Event Handler
		for event in pygame.event.get():
			#print event.type
			if event.type == QUIT:
				done = True
			if event.type == 2:
				if event.key == K_SPACE:
					#MainCL.reseed()
					if(show_ship):
						shoot_now = True
					else:
						panNow = not panNow
				if event.key == 119: # w
					ship_yv1 = 2
				if event.key == 97:  # a
					ship_xv2 = 2
				if event.key == 115: # s
					ship_yv2 = 2
				if event.key == 100: # d
					ship_xv1 = 2
				if event.key == 105: # i
					show_ship = not show_ship
					print "Ship:", show_ship
				if event.key == 264:
					ship_scroll_weapon = 0
				if event.key == 260:
					ship_scroll_weapon = 1
				if event.key == 262:
					ship_scroll_weapon = 2
				if event.key == 117: # u
					MainCL.saveSeedImage()
				if event.key >= 48 and event.key <= 57: # the number keys (0 through 9)
					index = (event.key - 49) % 10 # circularly rotate the indexes left by 1, causing the "1" keypress to be the first index and "0" to be the last index (just like the keyboard!)
					if index >= len(playlist):
						print "no playlist entry"
					else:
						fn = playlist[index]
						print fn
						if os.path.exists(fn):
							ruleFName = MainCL.setKernel(fn)
						else:
							print "    file not found"
			if event.type == KEYUP:
				print event.key
				if event.key == K_ESCAPE:
					done = True
				if event.key == K_SPACE:
					shoot_now = False
				if event.key == 116:
					seed_bitmap_image = MainCL.gui_seedimage()
				if event.key == 112:
					MainCL.reseed_zero()
					#Get Int
					#seed_strength = 256
					#MainCL.reseed()
				if event.key == 114:
					MainCL.reseed()
				if event.key == 101:
					ruleFName = MainCL.gui_kernel_select()
				if event.key == 113:
					if bitmap_render != 0:
						bitmap_render = 0
						print "Recording off"
					else:
						bitmap_render = 1
						print "Recording ON"
				if event.key == 102:
					use_filter = not use_filter
				if event.key == 119:
					ship_yv1 = 0
				if event.key == 115:
					ship_yv2 = 0
				if event.key == 100:
					ship_xv1 = 0
				if event.key == 97:
					ship_xv2 = 0
			if event.type == 5:
				if event.button == 4: #scrollup'
					if(show_ship and use_filter):
						if(bulletStatsAr[ship_scroll_weapon] < 256):
							bulletStatsAr[ship_scroll_weapon] += 1
					else:
						if panNow:
							myOrtho += -0.05 #zooom in
						else:
							brush_size += 1
				if event.button == 5: #scrolldown
					if(show_ship and use_filter):
						if(bulletStatsAr[ship_scroll_weapon] > 0):
							bulletStatsAr[ship_scroll_weapon] -= 1
					else:
						if panNow:
							myOrtho += 0.05 #zooom out
						else:
							if brush_size > 0:
								brush_size -= 1
				if event.button == 1: #Left Click
					#panNow = not panNow
					if(show_ship):
						shoot_now = True
					else:
						drawNow = True
					#MainCL.getData()
				if event.button == 3: #Right Click
					paused = not paused
					#panNow = not panNow
				if event.button == 2: #Middle Click
					MainCL.reseed()
				if event.button == 9: #Forward Mouse
					ruleFName = MainCL.gui_kernel_select()
				if event.button == 8: #Back Mouse
					seed_bitmap_image = MainCL.gui_seedimage()
				#print event.button
			if event.type == 6:
				if event.button == 1: #Release left
					drawNow = False
					#flipDrawNow = False
					#MainCL.initBuffers()
					#lastMousePos = pygame.mouse.get_pos()
					#print "snap:", lastMousePos
					#panNow = not panNow
					shoot_now = False
				#print event.button

		if drawNow and not panNow:
			mx = (float(pygmouse[1]) / GLR.SCREEN_SIZE[0])*(2**res_expo) - brush_size/2
			my = (float(pygmouse[0]) / GLR.SCREEN_SIZE[1])*(2**res_expo) - brush_size/2
			MainCL.place_square_GPU(np.int32(my), np.int32(mx), np.int32(brush_size))
			#flipDrawNow = not flipDrawNow
			#if not paused and drawNow == flipDrawNow:
			#	MainCL.initBuffers()



		#Min, max zoom corrector
		if myOrtho > 2:
			myOrtho = 2 #Out
		if myOrtho < -0.49:
			myOrtho = -0.49 #In

		#-----
		# Begin main program loop
		#-----
		if not paused:
			"""bullet_x = 0
			bullet_y = 0
			bullet_life = 64
			bullet_speed = 1
			bullet_size = 5"""

			if(show_ship and use_filter):
				ship_x += ship_xv1;
				ship_y -= ship_yv1;
				ship_x -= ship_xv2;
				ship_y += ship_yv2;
				if(shoot_now and bullet_life == 0):
					bullet_x = ship_x
					bullet_y = ship_y
					bullet_life = bulletStatsAr[0] + 11
					bullet_size = bulletStatsAr[1]
					bullet_explosion = bullet_size+bulletStatsAr[2]
					bullet_exp_timer = bullet_life
					#shoot_now = False

					mx = ((float(pygmouse[0]) / GLR.SCREEN_SIZE[0])*(2**res_expo)) - (ship_size/2)
					my = ((float(pygmouse[1]) / GLR.SCREEN_SIZE[0])*(2**res_expo)) - (ship_size/2)
					bullet_xv = (ship_x - mx) / (bullet_life)
					bullet_yv = (ship_y - my) / (bullet_life)
				if(bullet_life > 0):
					bullet_life -= 1
					if(bullet_life % bullet_exp_timer == 0):
						bullet_size = bullet_explosion
					else:
						bullet_size = bulletStatsAr[1]
					bullet_x -= bullet_xv
					bullet_y -= bullet_yv
					MainCL.place_square_GPU(np.int32(bullet_x+((ship_size/2)-(bullet_size/2))), np.int32(bullet_y+((ship_size/2)-(bullet_size/2))), np.int32(bullet_size))
					MainCL.place_square_filter_GPU(np.int32(bullet_x+((ship_size/2)-(bullet_size/2))), np.int32(bullet_y+((ship_size/2)-(bullet_size/2))), np.int32(bullet_size))

				MainCL.place_square_filter_GPU(np.int32(ship_x), np.int32(ship_y), np.int32(ship_size))
				#MainCL.getGameState()
				#MainCL.gameAr

			i += 1
			#Run the CL
			MainCL.execute()

			######Build Every sub-frame
			if use_filter and not show_ship:
				MainCL.build_render()

			if use_filter and show_ship:
				MainCL.build_render_no_blur()

			#for every rendered CL frame
			if i % renderEvery == 0:

				#Bottleneck, get the data from CL-GL sharing
				if not use_filter:
					MainCL.getData()


				###### Build on actual renders
				#MainCL.build_render()

				######Use Filters
				if use_filter:
					MainCL.getRenderData()

				GLR.current_grid = np.flipud(np.where(MainCL.a!=0, np.where(MainCL.a<CLMAXVAL, 255-(MainCL.a*200)/CLMAXVAL, 55), 0))
				#GLR.current_grid = np.flipud(np.where(MainCL.a!=0, 255-(MainCL.a*200)/CLMAXVAL, 0))



				i = 0 #reset time

				#Print out bitmap image
				if bitmap_render == 1:
					MainCL.bitRender(renderNum, image_magnification, CLMAXVAL, 5)
					#Count the renders
					renderNum += 1



		#-----
		# End CL
		#-----

		#Adjust mouse position for panning
		if not panNow:
			pygmouse = (0,0)



		#Do the OpenGL render
		GLR.doRender(pygmouse, lastMousePos)

		#Refresh display
		pygame.display.flip()



	pygame.quit()