// // Calculate the 10th Fibonacci number in a loop
// // Global variables
// int fib = 1;
// int prev = 0;
// int main() {
//     // Use registers for local variables
//     int n = 1;
//     int sum = 0;
//     while (n <= 10) {
//         sum = fib + prev;
//         prev = fib;
//         fib = sum;
//         n++;
//     }
//     return fib;
// }

.global main

.data
f: .word 1
p: .word 0

.text
main:
    push {ip, lr}
    
    ldr r1, =f
    ldr r0, [r1] // fib
    
    ldr r3, =p
    ldr r2, [r3] // prev
    
    mov r4, #1 // Variable n
    mov r5, #0 // Variable sum
    
  while:
    cmp r4, #10
    
    bgt endwhile
    
    add r5, r0, r2
    mov r2, r0
    mov r0, r5
    add r4, r4, #1
    
    b while
    
  endwhile:
  
    pop {ip, pc}