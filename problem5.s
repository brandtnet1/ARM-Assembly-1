// int a = 60;
// int b = 25;
// int main() {
//     while (a != b) {
//         if (a > b) {
//             a = a - b;
//         } else {
//             b = b - a;
//         }
//     }
//     return a;
// }

.global main

.data
a: .word 60
b: .word 25

.text
main:
    push {ip, lr}
    
    ldr r1, =a
    ldr r0, [r1] // a
    
    ldr r3, =b
    ldr r2, [r3] // b
    
  while:
    cmp r0, r2
    
    beq endwhile
    
    cmp r0, r2
    
    ble else
    
  if:
    sub r0, r0, r2
    
    b while
    
  else:
    sub r2, r2, r0
    
    b while
    
  endwhile:
    pop {ip, pc}