.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0

f:
    # Your code here
    mv t0, a0 # move the index to t0
    mv t1, a1 # move the address of array to t1
    addi t0, t0, 3 # normalize the given a0
    slli t2, t0, 2 # calculate the actual bias based on the index, since each element is 4 byte
    add t2, t2, t1 # get the aim position index
    lw t3, 0(t2) # load word from menmory
    # This is how you return from a function. You'll learn more about this later.
    mv a0, t3
    # This should be the last line in your program.
    jr ra
