/**
 * Compute the product of two WxW matricies.
 * NOTE: In this program, we provide our own startup code and do not rely on any
 * C standard library features.
 * As such, this program compiles safely with the "-nostdlib" linker flag.
 */

asm("li sp, 0x100000"); // SP set to 1 MB
asm("jal main"); // call main
asm("mv a1, a0"); // save return value in a1
asm("li a7, 10"); // prepare ecall exit
asm("ecall"); // now your simulator should stop

int sum_arr(int *arr, int n){
   int sum = 0;
   for(int i = 0; i < n; i++){
       sum = sum + arr[i];
   }
   return sum;
}

int main() {
    int arr[4] = {2, 5, 7, 4};
    int b = sum_arr(arr, 4);
}
