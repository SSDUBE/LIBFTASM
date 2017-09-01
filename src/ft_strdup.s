# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:51:51 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:51:55 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strdup
extern _ft_strlen
extern _malloc

section .text

_ft_strdup:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	test rdi, rdi
	jz done

len:
	push rdi
	call _ft_strlen	; Sets the length of the string in rax
	pop rdi

memory_alloc:
	inc rax			; Add 1 for the final 0
	mov r10, rdi
	; Save the len of the chain, save the string
	mov rdi, rax	; Parameters rax (len of the string) for malloc
	push r10 ; Save the chain
	push rdi ; Save to len
	; Aligment for calling
	sub rsp, 16
	call _malloc	; Call Malloc, rax points to an allocated string
	add rsp, 16

duplicate:

	pop rcx  		; Len
	pop rsi 		; Chain
	mov rdi, rax	; Puts the pointer of the allocated string in rdi
	cld
	rep movsb
	; The final zero is copy with the most 1 of rcx
	; The return pointer is already contained in rax

done:
	mov rsp, rbp
	pop rbp
	ret
