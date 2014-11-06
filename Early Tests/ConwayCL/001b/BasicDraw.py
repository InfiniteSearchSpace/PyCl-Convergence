import pygame
import Conway

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
	
	#On Closing
	for event in pygame.event.get(): 
		if (event.type == pygame.QUIT): 
			runNow = False

pygame.quit()

