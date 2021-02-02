# clean % in csv file

import re
import sys
import tqdm
import os

os.chdir("/home/dir/Documents/Skripsi/tables/performance-test/")

# read-parameter
file_names = [
    'arm-aveblur',
    'arm-gaussblur',
    'arm-laplacian',
    'arm-sharpen',
    'arm-sobelhor',
    'arm-sobelver',
    'fpga-aveblur',
    'fpga-gaussblur',
    'fpga-laplacian',
    'fpga-sharpen',
    'fpga-sobelhor',
    'fpga-sobelver'
]

def clean_file(file_name):
    file_input = open(file_name+".csv", "r+")
    s = ""
    for i in file_input:
        s = s+i
    # remove % and + 
    s = re.sub(r'[%+]', "", s)
    s = re.sub(r';\n', "\n", s)
    # replace ; to ,
    # s = re.sub(r'[;]', ",", s)
    file_input.seek(0)
    file_input.write(s)
    file_input.close()

for file_name in file_names:
    for i in tqdm.trange(1, 6, desc=f"{file_name}"):
        name = file_name + str(i)
        clean_file(name)

