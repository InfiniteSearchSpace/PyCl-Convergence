import pyopencl as cl
import numpy as np
import scipy as sp
from scipy import misc
import random as r
import datetime as date
import time 
from PIL import Image

np.set_printoptions(threshold=np.nan)

class CL:
	def __init__(self):
		self.ctx = cl.create_some_context()
		self.queue = cl.CommandQueue(self.ctx)
		self.tickState = False

	#Load kernal file and load as internal program
	def loadProgram(self, filename):
		#read in the OpenCL source file as a string
		f = open(filename, 'r')
		fstr = "".join(f.readlines())
		#print fstr
		#create the program
		self.program = cl.Program(self.ctx, fstr).build()

	#Create the host structures and buffers
	def popCorn(self):
		mf = cl.mem_flags
		
		#initialize client side (CPU) arrays
		#Use ar_ySize to increase the worldspace
		#-------------------------------------------
		self.ar_ySize = np.int32(270 * 2) 
		#-------------------------------------------
		self.a = np.ones((self.ar_ySize,self.ar_ySize), dtype=np.int32)
		self.c = np.ones((self.ar_ySize,self.ar_ySize), dtype=np.int32)
		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	
	##### Automata #####
	#Conway
	#Evolver
	#ConwayTorus
	#EvolverTorus
	#WaveTorus
	#AtomTorus

	#Run Kernal, create buffer, fill buffer
	def execute(self):
		if self.tickState == False:
			self.program.ConwayTorus(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
		else:
			self.program.ConwayTorus(self.queue, self.a.shape, None, self.ar_ySize, self.dest_buf, self.a_buf)
		self.tickState = not self.tickState



	#Enqueue read buffer, get it to self.a
	def getData(self):
		cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
		#print "tick:", self.tickState
		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)


	#Seed, fill buffer
	def seed(self, seedRand):
		np.random.seed(r.randint(0,100000))
		seedAr = np.random.randint(seedRand, size=(self.ar_ySize, self.ar_ySize))
		seedAr = np.where(seedAr==1, 1, 0)
		self.a = np.int32(seedAr)
		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)

	#Seed from image
	def loadImg(self, seedImage):
		
		img = np.array(Image.open(seedImage))
		img2 = np.where(img==255, 1, 0)
		self.a = np.int32(img2)

		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)

	#Print the output array
	def render(self):
		print self.a

	#Write Text File Render
	def fileRender(self):
		np.savetxt('OUT.txt', self.a, delimiter=' ', fmt="%s")

	#Write Bitmap File Render
	def bitRender(self, rn):
		name = "image" + str(rn)
		sp.misc.imsave(name + '.bmp', self.a)
	
if __name__ == "__main__":
	example = CL()
	example.loadProgram("kTest.cl")
	example.popCorn()

	#example.seed(4)
	example.loadImg("SEEDIMAGE.bmp")

	#--------------------------------------

	iterations = 1500 
	renderEvery = 15

	#--------------------------------------

	#Diagnostics
	total_cells = iterations * example.ar_ySize*example.ar_ySize
	print " > Task:", "{:,}".format(example.ar_ySize), "x", "{:,}".format(example.ar_ySize), "for", "{:,}".format(iterations), "iterations,", "{:,}".format(total_cells), "total cells"
	print " > Render every", "{:,}".format(renderEvery), "frames.", "{:,}".format(iterations/renderEvery), "total."

	renderNum = 0

	#Run the loop
	time1=time.clock()
	for i in range(iterations):
		example.execute()
		if i % renderEvery == 0:
			example.getData()
			example.bitRender(renderNum)
			renderNum += 1
			
			print " > Task:", "{:,}".format(example.ar_ySize), "x", "{:,}".format(example.ar_ySize), "for", "{:,}".format(iterations), "iterations,", "{:,}".format(total_cells), "total cells"
			print " > Render every", "{:,}".format(renderEvery), "frames.", "{:,}".format(iterations/renderEvery), "total."
			print "Imaged:", renderNum+1, "of", "{:,}".format(iterations/renderEvery) 
			


	time2=time.clock()
	
	#Results
	print " > GPU time:", "{:,}".format(total_cells), "cells in", unicode(time2-time1), "sec"
	print " > Cells per Second:", "{:,}".format((total_cells/(time2-time1)))
	
	#actually fetch the results
	example.getData()

	#Write the final output to the terminal output
	if example.ar_ySize <= 100:
		print " > Begin CPU Render"
		example.render()
	else:
		print " > Array size must be <= 100 to attempt a terminal render"
	

	#textMaxSize = 2500

	#Write the final output to a file
	#if example.ar_ySize <= textMaxSize:
	#	print " > Begin FileRender"
	#	example.fileRender()
	#else:
	#	print " > Array size must be <=", textMaxSize, "to attempt a Text-File Write render"

	print " > Begin Writing to Bitmap image"
	example.bitRender(renderNum)

	print " > DONE!"
