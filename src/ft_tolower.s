# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/28 12:48:33 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:52:17 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_tolower

section .text

_ft_tolower:
	mov rax, rdi ; copying a word from source string to the destination index
	cmp rax, 65 ; compare with caps latters
	js return
	cmp rax, 91
	jns return
	add rax, 32; convert to caps latters
	
return:
	ret
