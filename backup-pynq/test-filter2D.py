print("Loading overlay")
from pynq import Overlay
bs = Overlay("/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2Filter2DDilate.bit")
bs.download()

print("Loading xlnk")
from pynq import Xlnk
Xlnk.set_allocator_library('/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2Filter2DDilate.so')
mem_manager = Xlnk()

import pynq_cv.overlays.xv2Filter2DDilate as xv2
import numpy as np
import cv2
import time

img = cv2.imread('/home/xilinx/jupyter_notebooks/eeve.jpeg')
imgY = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

print("Size of imgY is ",imgY.shape);
height, width, channels = img.shape

#kernel = np.ones((3,3),np.float32)/9 #averaging filter
#kernel = np.array([[0.0, 1.0, 0],[1.0, -4, 1.0],[0, 1.0, 0.0]],np.float32) # Laplacian high-pass
#kernel = np.array([[0.0625,0.125,0.0625],[0.125,0.25,0.125],[0.0625,0.125,0.0625]],np.float32) #Gaussian blur
# kernel = np.array([[1.0,0.0,-1.0],[2.0,0.0,-2.0],[1.0,0.0,-1.0]],np.float32) # Sobel Vertical Edges
kernel = np.array([[1.0,2.0,1.0],[0.0,0.0,0.0],[-1.0,-2.0,-1.0]],np.float32) # Sobel Horizontal Edges

numberOfIterations=10

dstSW = np.ones((height,width),np.uint8);

xFimgY  = mem_manager.cma_array((height,width),np.uint8) #allocated physically contiguous numpy array 
xFimgY[:] = imgY[:] # copy source data

xFdst  = mem_manager.cma_array((height,width),np.uint8) #allocated physically contiguous numpy array


print("Start SW loop")
startSW=time.time()
for i in range(numberOfIterations):
    cv2.filter2D(imgY,-1,kernel,dst=dstSW,borderType=cv2.BORDER_CONSTANT) #filter2D on ARM
stopSW=time.time()


print("Start HW loop")
startPL=time.time()
for i in range(numberOfIterations):
    xv2.filter2D(xFimgY,-1,kernel,dst=xFdst,borderType=cv2.BORDER_CONSTANT) #filter2D offloaded to PL, working on physically continuous numpy arrays
stopPL=time.time()
    
print("SW frames per second: ", ((numberOfIterations) / (stopSW - startSW)))
print("PL frames per second: ", ((numberOfIterations) / (stopPL - startPL)))


print("Done")