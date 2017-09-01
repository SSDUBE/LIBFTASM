# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/28 12:25:28 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:52:26 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_toupper

section .text
	
_ft_toupper:
	mov rax, rdi ;copying source string from destination index
	cmp rax, 97 ;start from a
	js return
	cmp rax, 123 ;end at z
	jns return
	sub rax, 32 ; convert to upper

return:
	ret
