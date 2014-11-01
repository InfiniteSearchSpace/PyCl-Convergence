import pyopencl as cl
import numpy
import random as r
numpy.set_printoptions(threshold=numpy.nan)

class CL:
	def __init__(self):
		self.ctx = cl.create_some_context()
		self.queue = cl.CommandQueue(self.ctx)

	#Load kernal file and load as internal program
	def loadProgram(self, filename):
		#read in the OpenCL source file as a string
		f = open(filename, 'r')
		fstr = "".join(f.readlines())
		print fstr
		#create the program
		self.program = cl.Program(self.ctx, fstr).build()

	#Create the host structures and buffers
	def popCorn(self):
		mf = cl.mem_flags
		
		#initialize client side (CPU) arrays
		self.ar_ySize = numpy.int32(20)
		self.a = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		self.c = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernal, create buffer, fill buffer
	def execute(self):
		self.program.Conway(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
		cl.enqueue_read_buffer(self.queue, self.dest_buf, self.c).wait()
		self.a = self.c;
		print self.a
		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernal, create buffer, fill buffer
	def seed(self):
		self.c = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		self.a = self.c
		for i in range(self.ar_ySize):
			for j in range(self.ar_ySize):
				self.c[i][j] = r.randint(0,1)
		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

if __name__ == "__main__":
	example = CL()
	example.loadProgram("kTest.cl")
	example.popCorn()
	
	example.seed()	
	
	for i in range(1000):
		example.execute()