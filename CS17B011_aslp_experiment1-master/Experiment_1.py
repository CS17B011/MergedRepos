#!/usr/bin/python
#This is script for creating automatic comments with instruction that indicates what that commands do
#It has several Bugs but it reduces Human efforts up to 75% and can be improve further
#Please help to improve it
#Script run format : python Experiment_1.py file_name.c
###################################################################################
import sys
import os

x = sys.argv[1]
return_value = os.system("gcc " + x)

if return_value!=0 :
	print("C File does not execute properly.")
	exit()

y = x[:-2] + ".s"
z = x[:-2] + "_description.s"

os.system("gcc " + "-O0 -S -masm=intel " + x + " -o "+ y)

try:
    f = open(y,'r')
    fo = open(z,'w')

except FileNotFoundError:
    print("File Not Found !!")
    exit()

counter = 0

for i in f :
	fo.write(i.strip('\n'))
	if '.' in i:
		fo.write("\n")
		continue
	if 'push' in i:
		data = i.split(None,1)
		data[1] = data[1].strip('\n')
		fo.write("               ;" + "stack[top-" + str(counter) + "] <-- [" + data[1] +"]")
		counter+=1
	if 'pop' in i:
		data = i.split(None,1)
		data[1] = data[1].strip('\n')
		counter-=1
		fo.write("               ; " +  data[1]  + " <-- stack[top-" + str(counter) + "]" )
	if 'mov' in i:
		data = i.split(None,1)
		if "DWORD" in data[1]:
			reg = data[1].split(None,4)
			reg[3] = reg[3].strip()
			#fo.write(f"               ; {reg[0]}")
			fo.write(f"               ; {(reg[2])[:-1]} <-- {reg[3]}")
		else :
			reg = data[1].split(',',1)
			#reg[1] = reg[1].strip('\n')
			reg[1] = reg[1].strip('\n')
			reg[1] = reg[1].strip(' ')
			if reg[1].isdigit():
				fo.write(f"               ; {reg[0]} <-- {reg[1]}")
			else :
				fo.write(f"               ; {reg[0]} <-- [ {reg[1]} ] ; {reg[0]} <-- ")
	if 'ret' in i:
		fo.write(f"               ; return")
	if 'lea' in i:
		data = i.split(None,1)
		reg = data[1].split(',',1)
		reg[1] = reg[1].strip('\n')
		fo.write(f"               ; {reg[0]} <-- {reg[1]} ; {reg[0]} <-- ")
	if 'sub' in i:
		data = i.split(None,1)
		reg = data[1].split(',',1)
		reg[1] = reg[1].strip('\n')
		fo.write(f"               ; {reg[0]} <-- [{reg[0]}] - [{reg[1]}] ; {reg[0]} <-- ")
	if 'add' in i:
		data = i.split(None,1)
		reg = data[1].split(',',1)
		reg[1] = reg[1].strip('\n')
		fo.write(f"               ; {reg[0]} <-- [{reg[0]}] + [{reg[1]}] ; {reg[0]} <-- ")
	if 'mul' in i:
		data = i.split(None,1)
		reg = data[1].split(',',1)
		reg[1] = reg[1].strip('\n')
		fo.write(f"               ; {reg[0]} <-- [{reg[0]}] * [{reg[1]}] ; {reg[0]} <-- ")
	if 'div' in i:
		data = i.split(None,1)
		reg = data[1].split(',',1)
		reg[0] = reg[0].strip('\n')
		fo.write(f"               ; eax <-- [eax] / [{reg[0]}] ; eax <-- ")
	if 'cdqe' in i:
		fo.write(f"               ; Convert byte to word/word to double word/double word to quad word")
	fo.write("\n")