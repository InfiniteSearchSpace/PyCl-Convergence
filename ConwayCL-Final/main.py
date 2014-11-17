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

#Don't truncate printed arrays
np.set_printoptions(threshold=np.nan)

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
	def bitRender(self, rn, zoom):
		name = "Out/"+"image" + str(rn)
		sp.misc.imsave(name + '.bmp', sp.ndimage.zoom(self.a, zoom, order=0))






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
	iterations = 100
	renderEvery = 1
	image_magnification = 1

	#----------------------------------------------------------
	#--------------USER INPUT & CONFIG-------------------------
	#----------------------------------------------------------
	last_config = MainCL.loadConfig("Last_Config")
	vetoConfig = False

	list = [item for item in last_config.split(',') if item.strip()]
	
	#replay last config?
	uinput = raw_input("  > Replay last configuration? (Y/N): ")
	if uinput != "" and uinput != "n" and uinput != "N":
		#Overrite the defaults
		res_expo = 				int(list[0])
		ruleFName = 			list[1]
		seedImageFile = 		list[2]
		seed_strength = 		int(list[3])
		iterations = 			int(list[4])
		renderEvery = 			int(list[5])
		image_magnification = 	int(list[6])
		
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
		usePreset = raw_input("  > Use preset configuration? (Y/N): ")

	#Load the selected kernel
	MainCL.kAutomata = MainCL.loadProgram(ruleFName)
	
	#Randomly seed host array	
	MainCL.seed(seed_strength)
	
	if(not vetoConfig):
		if usePreset == "N" or usePreset == "n":
			#Query user about seeding the initial cell configurations
			SeedType = raw_input("  > Seed from bitmap file? (Y/N): ")
			if SeedType != "" and SeedType != "n" and SeedType != "N":
				#Seed from image
				MainCL.loadImg(tfd.askopenfilename(initialdir="./SeedImages", title="Select Seeding-Image File (*.bmp)")) 
			else:
				#Seed Strength
				uinput = raw_input("  > (Int) [" + str(seed_strength) + "] Enter random seed strength (1/x): ") 
				if uinput != "":
					MainCL.seed(int(uinput))

			#number of frames to calculate
			uinput = raw_input("  > (Int) [" + str(iterations) + "] Enter number of frames to calculate: ") 
			if uinput != "":
				iterations = int(uinput)

			#render every x frames
			uinput = raw_input("  > (Int) [" + str(renderEvery) + "] Render every x frames: ")
			if uinput != "":
				renderEvery = int(uinput)

			uinput = raw_input("  > (Int) [" + str(image_magnification) + "] Magnify rendered pixels by: ")
			if uinput != "":
				image_magnification = int(uinput)

			uinput = raw_input("  > Save configuration? (Y/N): ")
			if uinput != "" and uinput != "n" and uinput != "N":
				#Save presets
				sOut = str(res_expo) + ","
				sOut += ruleFName + "," 
				sOut += "null" + "," 
				sOut += str(seed_strength) + "," 
				sOut += str(iterations) + "," 
				sOut += str(renderEvery) + "," 
				sOut += str(image_magnification)
				config_file = open("Last_Config", "w")
				config_file.write(sOut)
				config_file.close()
				
			

	#----------------------------------------------------------
	#-------------- END USER INPUT & CONFIG--------------------
	#----------------------------------------------------------


	#-----
	# Begin main program loop	
	#-----

	MainCL.initBuffers()

	#Diagnostics
	total_cells = iterations * MainCL.ar_ySize*MainCL.ar_ySize
	renderNum = 0

	#Run the loop
	print "Running:", "{:,}".format(MainCL.ar_ySize), "x", "{:,}".format(MainCL.ar_ySize), "for", "{:,}".format(iterations), "iterations,", "{:,}".format(total_cells), "total cells"
	time1=time.clock()
	for i in range(iterations):
		MainCL.execute()
		if i % renderEvery == 0:
			MainCL.getData()
			MainCL.bitRender(renderNum, image_magnification)
			time2=time.clock()
			if i != 0:
				print "Img:", renderNum+1, "/", "{:,}".format(iterations/renderEvery), " - ", (float(renderNum+1)/float(iterations/renderEvery))*100, "%", "of", "{:,}".format(total_cells)
				print "ETA:", int((total_cells/(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))*(float(renderNum+1)/float(iterations/renderEvery))), "/", unicode(int(total_cells/(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))), "s. Cells/Sec.", "{:,}".format(int(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))
			time1 = time2
			renderNum += 1

	#Write the output to the terminal (for testing)
	if MainCL.ar_ySize <= 100:
		print " > Begin CPU Render"
		MainCL.render()
	else:
		print " > Array size must be <= 100 to attempt a terminal render"

	print " > DONE!"
