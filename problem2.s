// int main() {
// Use registers for local variables
//     int x = 10;
//     int y = 5;
//     int z = 20;
//     int max = x;
//     if (y > max) {
//         max = y;
//     }
//     if (z > max) {
//         max = z;
//     }
//     return max;
// }
.global main

.text
main:
    push {ip, lr}
    
    mov r1, #10 // x
    mov r2, #5  // y
    mov r3, #20 // z
    
    mov r0, r1  // max
    
    cmp r2, r0
    
    ble done // if y <= max skip "max = y"
    
    mov r0, r2
    
  done:
    
    cmp r3, r0 // if z <= max skip "max = z"
    
    ble done_two
    
    mov r0, r3
    
  done_two:
    
    pop {ip, pc}
    
    