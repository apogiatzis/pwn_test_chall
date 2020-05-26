#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
	setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stdin, NULL, _IONBF, 0);
	fflush(stdout);

    // Add challenge code here
    // ...
    printf("%s\n", "Hello, friend...");
    // ...

    return 0;
}