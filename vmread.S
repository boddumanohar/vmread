.intel_syntax noprefix
.section .text
.globl vmread
.type vmread, @function

vmread:
	vmread [rsi], rdi
	jbe __vmx_failure
	jmp __vmx_success

__vmx_failure:
	mov rax, 0x0
	ret

__vmx_success:
	mov rax, 0x1
	ret

