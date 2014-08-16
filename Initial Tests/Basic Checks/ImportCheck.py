import pyopencl as cl
print "-  BEGIN  -\n"

platforms = cl.get_platforms()

print platforms
print "\n"

print platforms[0].extensions
print "\n"

devices = platforms[0].get_devices()

print devices
print "\n"

gpu_devices = platforms[0].get_devices(cl.device_type.GPU)

print gpu_devices
print "\n"

print dir(gpu_devices[0])