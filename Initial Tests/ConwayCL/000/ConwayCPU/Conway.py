import random
from copy import deepcopy

#Transition function for CGoL
def conway_tick(worldspace):
	#set up neighbourhood to assess
	nhood = ((-1,0),(-1,-1),(-1,1),(0,-1),(0,1),(1,-1),(1,0),(1,1))
	#make a buffer to hold the previous state
	world_buffer = deepcopy(worldspace)
	
	for i in range(0, len(world_buffer)):
		for j in range(0, len(worldspace[i])):
			
			#assess neighbourhood
			ncount = 0
			for n in nhood:
				if world_buffer[(i+n[0])%len(worldspace)][(j+n[1])%len(worldspace[i])] != 0:
					ncount+=1
			
			#Do the evolution
			if ncount >= 4: 
				worldspace[i][j] = 0
			elif ncount <= 1: 
				worldspace[i][j] = 0
			elif ncount == 3: 
				worldspace[i][j] = 1
			
					

#Populate world with random
def seed_world(worldspace):
	for i in range(0, len(worldspace)):
		for j in range(0, len(worldspace[i])):
			worldspace[i][j] = random.SystemRandom().randint(0, 1)

#Basic testing, CGoL manager
class Conway:
	cw=480
	ch=320
	worldspace=[[0 for i in range(ch)] for j in range(cw)]
	seed_world(worldspace)

#Break static
con = Conway()
