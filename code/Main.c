#include <stdio.h>

void main(void) {
  int i;
  double d;
  char c, s[20];
  printf("Hello, Alex and Magnus!\n");
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.\n", c, s, i, d);
}
