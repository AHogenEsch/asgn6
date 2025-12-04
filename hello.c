#include "hello.h"

/* Prints "Hello world!" or exits with status 1 if failure*/
int main(int argc, char *argv[]){
    /* Greet the world, but don't forget about errors */
    if(printf("Hello world!\n") < 0){
        fprintf(stderr, "Error: printf failed to write the message.\n");
        return 1;
    }
    /* Exit cleanly if no errors */
    return 0;
    /* Have a good winter break! */
}