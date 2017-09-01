# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:49:41 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:49:44 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero

section .text

_ft_bzero:
    cmp rdi, 0 ;destination index with null
    jz return
    mov rbx, rdi
    mov rax, rsi

bzero_loop:
    cmp rax, 0
    jle return
    mov byte[rbx], 0 ;asign the bite
    inc rbx
    dec rax
    jmp bzero_loop ;jumps bzero loop
return:
    ret
