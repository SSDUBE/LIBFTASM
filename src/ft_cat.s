# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:49:51 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:49:54 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_cat

extern _ft_strlen

section .text

_ft_cat:
	push rbp
	mov rbp, rsp

read:
    ; put rax to `read` sys call
	mov rax, 0x2000003
	; backup fd
	push rdi
	; string buf
	lea rsi, [rel buffer]
	; buf size
	mov rdx, bufsize
	; READ
	syscall
	; syscall out if error
	jc error
	; exit if end of file
	cmp rax, 0
	je end
	; file descriptor
	mov rdi, 1
	; size to write
	mov rdx, rax
	; put rax to `write` sys call
	mov rax, 0x2000004
	; WRITE
	syscall
	; syscall out if error
	jc error
	; destroy fd
	pop rdi
	; loop
	jmp read

error:
	pop rdi
	mov rax, 1

end:
	mov rsp, rbp
	pop rbp
	ret

section .data

buffer times 255 db 0
bufsize equ $ - buffer