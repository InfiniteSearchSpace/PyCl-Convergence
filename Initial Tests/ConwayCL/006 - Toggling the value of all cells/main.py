import pyopencl as cl
import numpy
numpy.set_printoptions(threshold=numpy.nan)

#Can calculate 14200x14200, GPU array elements 3 times a sec. 
# vs 1200x1200 on CPU.

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
		self.ar_ySize = numpy.int32(10000)
		self.a = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		self.c = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernal, create buffer, fill buffer
	def execute(self):
		self.program.ToggleCell(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
		cl.enqueue_read_buffer(self.queue, self.dest_buf, self.c).wait()
		self.a = self.c;
		print "Output Test: a[5][5] =", self.a[5][5]
		#Refresh buffers
		mf = cl.mem_flags
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

if __name__ == "__main__":
	example = CL()
	example.loadProgram("kTest.cl")
	example.popCorn()
	
	example.execute()
	example.execute()
	example.execute()	
	example.execute()
	example.execute()
	example.execute()