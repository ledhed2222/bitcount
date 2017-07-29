#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int bitcount(int input) {
	int neg = input < 0 ? 1 : 0;
	input = neg ? (input * -1) - 1 : input;
	int count = 0;
	for (int i = 0; i < 32; i++) {
		if (input & 1)
			count++;
		input = input >> 1;
	}
	return neg ? 32 - count : count;
}

int main(int argc, char* argv[]) {
	if (argc < 2) {
		printf("You must enter a number!\n");
		return 1;
	}
	int input = (int) strtol(argv[1], &argv[1], 10);
	if (errno == EINVAL) {
		printf("You must enter a number!\n");
		return 1;
	}
	printf("%d\n", bitcount(input));
	return 0;
}
