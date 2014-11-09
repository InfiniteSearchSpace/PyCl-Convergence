import pyopencl as cl
import numpy as np
import scipy as sp
from scipy import misc
import random as r
import datetime as date
import time 
from PIL import Image
import os

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

	def initHostArrays(self):
		#initialize client side (CPU) arrays
		#Use ar_ySize to increase the worldspace
		#-------------------------------------------
		self.ar_ySize = np.int32(2048)
		#-------------------------------------------
		self.a = np.ones((self.ar_ySize,self.ar_ySize), dtype=np.int32)

	#Create the host structures and buffers
	def initBuffers(self):
		mf = cl.mem_flags

		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.b_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	
	##### Automata #####
	#Conway
	#Evolver
	#ConwayTorus
	#EvolverTorus
	#WaveTorus
	#AtomTorus
	#CrystalTorus

	#Run Kernal, swapping state between buffer a & b
	def execute(self):
		if self.tickState == False:
			self.program.ConwayTorus(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.b_buf)
		else:
			self.program.ConwayTorus(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.a_buf)
		
		self.tickState = not self.tickState



	#Read to buffer, Read from dest buffer to self.a
	def getData(self):
		if self.tickState == False:
			self.program.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.b_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
		else:
			self.program.GetWorld(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
			cl.enqueue_read_buffer(self.queue, self.dest_buf, self.a).wait()
			
		

	#Seed, fill buffer
	def seed(self, seedRand):
		np.random.seed(r.randint(0,100000))
		seedAr = np.random.randint(seedRand, size=(self.ar_ySize, self.ar_ySize))
		seedAr = np.where(seedAr==1, 1, 0)
		self.a = np.int32(seedAr)

	#Seed from image
	def loadImg(self, seedImage):
		img = np.array(Image.open(seedImage))
		img2 = np.where(img==255, 1, 0)
		self.a = np.int32(img2)

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
	MainCL = CL()
	MainCL.loadProgram("kTest.cl")
	MainCL.initHostArrays()

	#--------------------------------------
	MainCL.seed(4) #Random seed
	#MainCL.loadImg("SEEDIMAGE-Atom-1024.bmp") #Seed from image

	iterations = 10000 #number of frames to calculate

	renderEvery = 10 #render every x frames
	#--------------------------------------

	MainCL.initBuffers()

	#Diagnostics
	total_cells = iterations * MainCL.ar_ySize*MainCL.ar_ySize
	renderNum = 0

	#Run the loop
	time1=time.clock()
	for i in range(iterations):
		MainCL.execute()
		if i % renderEvery == 0:
			MainCL.getData()
			MainCL.bitRender(renderNum)
			#Results			
			#print " > Task:", "{:,}".format(MainCL.ar_ySize), "x", "{:,}".format(MainCL.ar_ySize), "for", "{:,}".format(iterations), "iterations,", "{:,}".format(total_cells), "total cells"
			#print " > Render every", "{:,}".format(renderEvery), "frames.", "{:,}".format(iterations/renderEvery), "total."
			time2=time.clock()
			#print " > GPU time:", unicode(time2-time1), "s.", "Estimated Completion Time:", unicode(total_cells/(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))
			#print " > Cells per Second:", "{:,}".format((renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))
			#print " > Imaged:", renderNum+1, "of", "{:,}".format(iterations/renderEvery), " - ", (float(renderNum+1)/float(iterations/renderEvery))*100, "%"
			#print "- - - - - - - - - - - - - - - - - - -"
			if i != 0:
				print "Img:", renderNum+1, "/", "{:,}".format(iterations/renderEvery), " - ", (float(renderNum+1)/float(iterations/renderEvery))*100, "%", "of", "{:,}".format(total_cells)
				print "ETA:", int((total_cells/(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))*(float(renderNum+1)/float(iterations/renderEvery))), "/", unicode(int(total_cells/(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))), "s. Cells/Sec.", "{:,}".format(int(renderEvery*MainCL.ar_ySize*MainCL.ar_ySize/(time2-time1)))
			
			time1 = time2
			renderNum += 1

	#Write the final output to the terminal output
	if MainCL.ar_ySize <= 100:
		print " > Begin CPU Render"
		MainCL.render()
	else:
		print " > Array size must be <= 100 to attempt a terminal render"

	print " > DONE!"
