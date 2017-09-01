# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/28 13:21:24 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:52:08 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strlen

section .text

_ft_strlen:
	xor rcx, rcx ;comparing the instruction to the memory
	test rdi, rdi

next:
	mov rcx, -1
	mov al, 0 ; call the last 8 bits of register then set to null
	cld ; clear direction flags everytime program loops eather it will be set to 0 or 1
	repne ; conditional repeat it repeats the operation while the zero flag not equal to zero
	scasb ;searching a particular character in AL
	not rcx ;reverse bits in operands
	dec rcx
	
done:
	mov rax, rcx ;moving the lenght to the output value
	ret
