/*
	TOYOSHIKI Tiny BASIC for CP/M
	(C)2015 Tetsuya Suzuki
	2021 ported by Meister
	Build: zcc +cpm -create-app -ottbasic.bin ttbasic.c basic.c
*/

#include <stdlib.h>
#include <time.h>

void basic(void); // prototype

int main(){
	srand((unsigned int)time(0)); // for RND function
	basic(); // call The BASIC
	return 0;
}
