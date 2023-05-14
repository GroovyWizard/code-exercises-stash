#include <stdio.h>

void swap(unsigned short *a , unsigned short *b) {
  unsigned holder = 0;
  holder = *a;
  *a = *b;
  *b = holder;
};


int main(void) {
  unsigned short a = 21;
  unsigned short b = 17;

  swap(&a, &b);
  printf("a = %d, b = %d\n", a, b);
  return 0;

}
