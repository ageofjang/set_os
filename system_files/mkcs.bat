del cscpoe.files
dir /b /s *.c *.cpp *.h *.mal *.s *.S *.py > cscope.files
cscope -i cscope.files
