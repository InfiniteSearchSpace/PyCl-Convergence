PyCl-Convergence
================

Python/OpenCl Cellular Automata explorer

I encourage anyone who is willing to contribute to this code do so:
	Fork the Github repository and upload your successive changes!

### Dependencies:

 * sudo apt-get install python-pyopencl

 * sudo apt-get install python-scipy

 * sudo apt-get install python-tk

 * sudo apt-get install python-pygame

### OpenCL CPU Framework:

AMD

 * http://developer.amd.com/tools-and-sdks/opencl-zone/amd-accelerated-parallel-processing-app-sdk/

Intel

 * https://software.intel.com/en-us/intel-opencl

### GPU OpenCL compatibility:

nvidia:

 * sudo apt-get install nvidia-opencl-dev

AMD:

 * Pending ... Message me at reddit's /u/slackermanz if you have compatibility suggestions!


# A "Litmus Test":

If your machine can run GPU-accelerated simulations with https://code.google.com/p/reaction-diffusion/ it should also be able to run this program.



# Once that is set up...

Open the terminal in './PyCl-Convergence-master/ConwayCL-Final'

Run the Python script './PyCl-Convergence-master/ConwayCL-Final/Main.py' in the terminal with: 'python main.py'

 * Spam the ENTER key to use default settings

 * Right Click to toggle pause

 * Click the scrollwheel or press 'R' key to restart/reseed world

 * 'Forward' mouse button or 'E' key to change rule

 * 'Back' mousebutton or 'T' key to use a Bitmap image seed

 * 'Q' key to toggle image-capture recording (creates a series of Avidemux-compatible Bitmaps)

 * 'P' to wipe the screen clear of all living cells

 * 'F' to toggle use of 'Photographic' filter

 * 'I' to toggle use of 'Game Mode' (Prerequisite: 'F' for Filter Mode must be on)

There's Three Modes: DRAW, VIEW, and GAME

DRAW (Typical Default)

 * Scrollwheel to increase Drawn Square Size

 * 'SPACEBAR' to toggle DRAW or VIEW modes

VIEW

 * 'SPACEBAR' to toggle DRAW or VIEW modes

 * The game world will become centered on the mouse location

 * Zoom in or out with the scrollwheel

GAME (Temporarily Default Override)

 * Spacebar or Left Click to shoot at the mouse position

 * 'F' to toggle use of 'Photographic' filter

 * 'I' to toggle use of 'Game Mode'

	








