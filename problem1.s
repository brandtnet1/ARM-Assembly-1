// Add up three global variables

// Global variables
// int a = 10;
// int b = 20;
// int c = 30;
// void main(){
//    Use Registers for local variables
//    int sum = a + b + c;
//    return sum;
//}

.global main

.data
a: .word 10
b: .word 20
c: .word 30

.text

main:
    push {ip, lr}
    
    ldr r2, =a
    ldr r1, [r2]
    
    ldr r4, =b
    ldr r3, [r4]
    
    ldr r6, =c
    ldr r5, [r6]
    
    // r0 <- a(r1) + b(r3)
    add r0, r1, r3
    
    // r0 <- a + b(r0) + c(r5)
    add r0, r0, r5
    
    pop {ip, pc}
    
    
    
    