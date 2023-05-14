#define MAX_LEVEL 99
#include <stdio.h>

struct Player {
  int id;
  char name[20];
  unsigned int level;
};

void isMaxLevel(unsigned int *level, char (*name)[20]) 
{
  if(*level != MAX_LEVEL) {
    printf("\nPlayer %s is not max level!", *name);
    return;
  }

  printf("\nPlayer %s is max Level!", *name);
  return;
}


int main(void){
  struct Player link = {1, "link", 2};
  struct Player cloud = {2, "cloud", 99};
  isMaxLevel(&link.level, &link.name);
  isMaxLevel(&cloud.level, &cloud.name);
  return 0;
}
