
# NAME: Student CS178 Irina Golovko
# FILE: Makefile 
# DATE: August 28, 2018
# DESC: A Makefile that contains the following two targets:
#     	Count3s - a native executable file that counts the number 
#	of 32 bit ints with the value 3s in the binary file 
# 	threesData.bin
#     	runCount3s - a target that launches the executable
# USAGE:make or make Count3s - to compile the files in the directory 
# 	and obtain an executable Count3s
#	make runCount3s - to execute Count3s file 
#	make clean - delete all files creating during using 
# 	of this makefile

# 'Count3s' is a target, which depends on existence of 
# readInt32BitLE.c, CountThrees.c, readInt32BitLE.h files

Count3s: 
# This command will compile readInt32BitLE.c file and create
# object of this file. If it's failed it produce error message on the 
# screen: for, example "no such file or directory" or ‘missing 
# separator. Stop.’ with the name of file and compilation will terminated. 
	gcc -c readInt32BitLE.c -o readInt32BitLE.o 

# This command will compile CountThrees.c file and create object of 
# this file. If it's failed it will produce error message on the screen 
# and compilation will terminated.	
	gcc -c CountThrees.c -o CountThreesC.o

# this command will obtain compiled executable file Count3s
	gcc -o Count3s readInt32BitLE.o CountThreesC.o 
	
# 'runCount3s' is a target which depends on existence of
# executable Count3s and threesData.bin
# If 'make runCount3s' will failed it will produce error message 
# on the screen and compilation will terminated.
runCount3s: Count3s threesData.bin
	./Count3s


#to delete the executable file and all the object files from 
# the directory. If command 'make clean' is failed it will 
# produce error message on the screen and compilation will terminated.
clean: 
	rm -rf Count3s readInt32BitLE.o CountThreesC.o





