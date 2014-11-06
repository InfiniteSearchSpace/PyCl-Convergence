#Port from Adventures in OpenCL Part1 to PyOpenCL
# http://enja.org/2010/07/13/adventures-in-opencl-part-1-getting-started/
# http://documen.tician.de/pyopencl/

import pyopencl as cl
import numpy
import pygame
import Conway

class CL:
    def __init__(self):
        self.ctx = cl.create_some_context()
        self.queue = cl.CommandQueue(self.ctx)

    def loadProgram(self, filename):
        #read in the OpenCL source file as a string
        f = open(filename, 'r')
        fstr = "".join(f.readlines())
        print fstr
        #create the program
        self.program = cl.Program(self.ctx, fstr).build()

    def popCorn(self):
        mf = cl.mem_flags

        #initialize client side (CPU) arrays
        self.a = numpy.array(range(10), dtype=numpy.float32)
        self.b = numpy.array(range(10), dtype=numpy.float32)

        #create OpenCL buffers
        self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
        self.b_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.b)
        self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.b.nbytes)

    def rePopCorn(self):
        mf = cl.mem_flags

        #create OpenCL buffers
        self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
        self.b_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.b)
        self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.b.nbytes)

    def execute(self):
        self.program.part1(self.queue, self.a.shape, None, self.a_buf, self.b_buf, self.dest_buf)
        c = numpy.empty_like(self.a)
        cl.enqueue_read_buffer(self.queue, self.dest_buf, c).wait()
        self.a = c
        print "a", self.a
        print "b", self.b
        print "c", c
        print 'works'

    def conway(self):
        pygame.init()
        win = pygame.display.set_mode((480,320))
        #CGoL controller
        c = Conway
        #gameloop
        runNow=True
        while runNow: 
			#Prepare to draw
			c.conway_tick(c.con.worldspace)
			#Draw
			for i in range(0, len(c.con.worldspace)):
				for j in range(0, len(c.con.worldspace[i])):
					win.set_at((i, j), (0,c.con.worldspace[i][j]*255,0))
			#Render
			pygame.display.update()
			example.rePopCorn()
			example.execute()
			#On Closing
			for event in pygame.event.get(): 
				if (event.type == pygame.QUIT): 
					runNow = False
        pygame.quit()

if __name__ == "__main__":
	example = CL()
	example.loadProgram("part1.cl")
	example.popCorn()
	example.execute()
	example.conway()



