#Port from Adventures in OpenCL Part1 to PyOpenCL
# http://enja.org/2010/07/13/adventures-in-opencl-part-1-getting-started/
# http://documen.tician.de/pyopencl/

import pyopencl as cl
import numpy
import pygame
import Conway
import random

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
        self.a = numpy.array([[8 for i in range(320)] for j in range(480)], dtype=numpy.int32)

        #create OpenCL buffers
        self.a_buf = cl.Buffer(self.ctx, mf.READ_ONLY | mf.COPY_HOST_PTR, hostbuf=self.a)
        self.dest_buf = cl.Buffer(self.ctx, mf.WRITE_ONLY, self.a.nbytes)

    def execute(self):
        self.program.part1(self.queue, self.a.shape, None, self.a_buf, self.dest_buf)
        c = numpy.empty_like(self.a)
        cl.enqueue_read_buffer(self.queue, self.dest_buf, c).wait()
        print c
        #return c

    def conway(self):
        pygame.init()
        win = pygame.display.set_mode((480,320))
        #CGoL controller
        c = Conway
        #gameloop
        runNow=True
        while runNow: 
			#Prepare to draw
			#example.popCorn()
			conworld = example.execute()
			#print conworld
			#Draw
			for i in range(0, len(conworld)):
				for j in range(0, len(conworld[i])):
					print '' + str(i) + ' ' + str(j) + ' ' + str(conworld[i][j])
					if conworld[i][j] == 0 or conworld[i][j] == 1:
						win.set_at((i, j), (0,conworld[i][j]*255,0))
			#Render
			pygame.display.update()
			
			#On Closing
			for event in pygame.event.get(): 
				if (event.type == pygame.QUIT): 
					runNow = False
        pygame.quit()

if __name__ == "__main__":
	example = CL()
	example.loadProgram("part1.cl")
	example.popCorn()
	#conworld = example.execute()
	example.execute()
	#print conworld
	#example.conway()



