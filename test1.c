#include <stdio.h>
int main(int argc, char* argv[]) {
  if (argc == 1) {
    printf("OTL");
  } else {
    printf("OTL %s", argv[1]);
  }
  return 0;
}
