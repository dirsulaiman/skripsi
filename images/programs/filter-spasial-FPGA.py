import os
os.getpid()

# Load filter2D + dilate overlay
from pynq import Overlay
bareHDMI = Overlay("/usr/local/lib/python3.6/dist-packages/
    pynq_cv/overlays/xv2Filter2DDilate.bit")
bareHDMI.download()
import pynq_cv.overlays.xv2Filter2DDilate as xv2

# Load xlnk memory mangager
from pynq import Xlnk
Xlnk.set_allocator_library("/usr/local/lib/python3.6/
    dist-packages/pynq_cv/overlays/xv2Filter2DDilate.so")
mem_manager = Xlnk()

hdmi_in = bareHDMI.video.hdmi_in
hdmi_out = bareHDMI.video.hdmi_out

from pynq.lib.video import *
hdmi_in.configure(PIXEL_GRAY)
hdmi_out.configure(hdmi_in.mode)

hdmi_in.cacheable_frames = False
hdmi_out.cacheable_frames = False

hdmi_in.start()
hdmi_out.start()

mymode = hdmi_in.mode
print("My mode: "+str(mymode))

height = hdmi_in.mode.height
width = hdmi_in.mode.width
bpp = hdmi_in.mode.bits_per_pixel

hdmi_in.tie(hdmi_out)

import numpy as np
import time

dstSW = np.ones((height,width),np.uint8);
xFdst  = mem_manager.cma_array((height,width),np.uint8)

kernel = {
        'average blur': np.array([
            [1.0, 1.0, 1.0],
            [1.0, 1.0, 1.0],
            [1.0, 1.0, 1.0]],np.float32)/9,
        'gaussian blur': np.array([
            [1.0, 2.0, 1.0],
            [2.0, 4.0, 2.0],
            [1.0, 2.0, 1.0]],np.float32)/16,
        'sobel ver': np.array([
            [1.0,0.0,-1.0],
            [2.0,0.0,-2.0],
            [1.0,0.0,-1.0]],np.float32),
        'sobel hor': np.array([
            [1.0,2.0,1.0],
            [0.0,0.0,0.0],
            [-1.0,-2.0,-1.0]],np.float32),
        'laplacian': np.array([
            [0.0, 1.0, 0],
            [1.0, -4, 1.0],
            [0, 1.0, 0.0]],np.float32),
        'sharpen': np.array([
            [-1,-1, -1],
            [-1, 9, -1],
            [-1, -1, -1]],np.float32),
}

kernel_name = 'sharpen'
numberOfIterations=200

startPL=time.time()
for i in range(numberOfIterations):
    inframe = hdmi_in.readframe()
    outframe = hdmi_out.newframe()
    xv2.filter2D(inframe, -1, kernel.get(kernel_name), 
        dst=outframe,borderType=cv2.BORDER_CONSTANT) 
    hdmi_out.writeframe(outframe)
stopPL=time.time()
print("Start HW loop = ", (stopPL - startPL))
print("PL frames per second: ", 
    ((numberOfIterations) / (stopPL - startPL)))

hdmi_out.close()
hdmi_in.close()