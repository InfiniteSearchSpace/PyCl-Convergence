import pyopencl as cl
import numpy as np
import scipy as sp
from scipy import misc
import random as r
import datetime as date
import time 
from PIL import Image
import os

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
		#print fstr
		#create the program
		return cl.Program(self.ctx, fstr).build()

	#initialize host side (CPU) arrays
	def initHostArrays(self):
		#Use ar_ySize below to increase the worldspace, must be multiple of 32 it seems
		#-------------------------------------------
		self.ar_ySize = np.int32(512*2)
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
	def bitRender(self, rn):
		name = "image" + str(rn)
		sp.misc.imsave(name + '.bmp', self.a)
	
if __name__ == "__main__":
	MainCL = CL()
	MainCL.kUtil = MainCL.loadProgram("KernelUtils.cl")
	
	#-- Config Box -------------------------
	MainCL.kAutomata = MainCL.loadProgram("RuleKernels/Atom-Torus.cl")
	MainCL.initHostArrays()

	MainCL.seed(7) #Random seed
	#MainCL.loadImg("SeedImages/SEEDIMAGE-Atom-1024.bmp") #Seed from image

	iterations = 10000 #number of frames to calculate

	renderEvery = 100 #render every x frames
	#--------------------------------------

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
			MainCL.bitRender(renderNum)
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
