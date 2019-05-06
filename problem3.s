// // Return remainder after integer division
// // Global variables
// int a = 4;
// int b = 30;
// int main() {
// // Use registers for local variables
//     int remainder = a;
//     int divisor = b;
//
//     while (remainder >= divisor) {
//         remainder -= divisor;
//     }
//     return remainder;
// }

.global main

.data
a: .word 4
b: .word 30

.text
main:
    push {ip, lr}
    
    ldr r3, =a
    ldr r2, [r3]
    
    ldr r5, =b
    ldr r4, [r5]
    
    mov r0, r2
    mov r1, r4 
    
  while:
    cmp r0, r1
    
    blt endwhile
    
    sub r0, r0, r1
    
    b while
    
  endwhile:
    
    pop {ip, pc}
