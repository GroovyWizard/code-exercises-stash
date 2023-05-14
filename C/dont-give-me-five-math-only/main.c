#include <stdio.h>
#include <stdlib.h>
#define false 0
#define true 1

int hasFiveInIt(int *number) {
  
  int absNumber = abs(*number);
  int result = absNumber % 10;
  if(result == 5){
    return true;
  }
  
  return false;
}

int isFifty(int *number) {
    int absNumber = abs(*number);
    
    if( (absNumber-50) * (absNumber-59) <= 0 ) 
    {
      return true;
    }
    return false;
}

int dontGiveMeFive(int start, int end)
{
  int sum = 0;
  int i;
  
 for(i=start; i < end+1; i++) {
   if(hasFiveInIt(&i) == false && isFifty(&i) == false) {
     sum++;
   }
  }
  return sum;
}

int main(void) {
  dontGiveMeFive(1, 90);
  dontGiveMeFive(-14, -1);
  return 0;
}
