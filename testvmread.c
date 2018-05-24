#include<stdio.h>
#include "vmread.h"
#include <stdint.h>
int main() {
		int value = 0;
		uint64_t addr = 0x00002804ULL;
		vmread(addr, 	&value);
		printf("the value of GUEST_IA32_PAT is %d  \n", value);
		return 0;
	}
