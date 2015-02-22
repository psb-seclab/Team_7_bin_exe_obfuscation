#Sets eax to 0 based on the fact that a xor b == (a and not b) or (b and not a)
#Increments a counter

mov edx eax
mov ebx eax
not ebx
and eax ebx
mov ebx edx
not edx
and ebx edx
or eax ebx
add ecx, 1

#Additionally by splitting the code into multiple operations
#Other code can be interleaved between and after the operations

#Increments a counter, checks if it's equal to 10, sets eax to 0
mov edx eax
mov ebx eax
add ecx, 1

not ebx
and eax ebx
mov ebx edx
cmp ecx, 10

not edx
and ebx edx
or eax ebx #eax gets set to 0 here
xor ebx edx 
and ebx eax #ebx appreas to be the important register
