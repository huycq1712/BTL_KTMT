asm("li sp, 0x100000"); // SP set to 1 MB
 asm("jal main"); // call main
 asm("mv a1, a0"); // save return value in a1
 asm("li a7, 10"); // prepare ecall exit
 asm("ecall"); // now your simulator should stop
 int max(int a, int b){
     if(a > b) {
         return a;
     }
     return b;
 }
 int main() {
    int a = 5;
    int b = 10;
    int c = max(a, b);
 }
