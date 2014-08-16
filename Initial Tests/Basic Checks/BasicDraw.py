import pygame
import math

pygame.init()

win = pygame.display.set_mode((480,320))

runNow=True
i=0
while runNow: 
	#Draw
	win.set_at((62,63),(255,255,255))
	win.set_at((63,63),(255,255,255))
	win.set_at((64,64),(255,255,255))
	
	i+=19
	if i%17 == (i**2)%41:
		win.set_at((i%480,i%320),(0,255,0))
	
	
	
	#Render
	pygame.display.update()
	
	#On Closing
	for event in pygame.event.get(): 
		if (event.type == pygame.QUIT): 
			runNow = False

pygame.quit()

