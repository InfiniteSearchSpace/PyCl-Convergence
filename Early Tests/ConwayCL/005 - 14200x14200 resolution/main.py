import pyopencl as cl
import numpy
numpy.set_printoptions(threshold=numpy.nan)

#Let's calculate 14200x14200, or 201,640,000/sec GPU array elements. ~2,073,600/sec on CPU.
# ~100x speed or size increase.

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
		self.ar_ySize = numpy.int32(14200)
		self.a = numpy.ones((self.ar_ySize,self.ar_ySize), dtype=numpy.int32)
		
		#create OpenCL buffers
		self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
		self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

	#Run Kernal, create buffer, fill buffer
	def execute(self):
		#self.program.Sum_A_ID(self.queue, self.a.shape, None, self.ar_ySize, self.a_buf, self.dest_buf)
		self.program.getID(self.queue, self.a.shape, None, self.ar_ySize, self.dest_buf)
		c = numpy.zeros_like(self.a)
		cl.enqueue_read_buffer(self.queue, self.dest_buf, c).wait()
		print "Done C!"
		print "Output Test: C[5][5] =", c[5][5]

if __name__ == "__main__":
	example = CL()
	example.loadProgram("kTest.cl")
	example.popCorn()
	example.execute()