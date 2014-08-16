import sys
from Tkinter import *

mainGui = Tk()

mainGui.geometry('480x320')

drawSurf = Canvas(mainGui,width=400,height=300)

print dir(drawSurf)
drawSurf.create_rectangle(10, 10, 100, 100, fill="black")

drawSurf.pack()

mainGui.mainloop()

