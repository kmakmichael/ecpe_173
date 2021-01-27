.globl main 

.text 
main:


ori $v0, $0, 10 # Sets $v0 to "10" so program will exit
syscall # Exit
