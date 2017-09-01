# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:50:20 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:50:22 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalpha

section .text

_ft_isalpha:
    cmp rdi, 65 ;caps A
    jl is_not_alpha
    cmp rdi, 91
    jle is_alpha
    cmp rdi, 97 ;small caps a
    jge is_alpha
    cmp rdi, 123 ;small z
    jg is_not_alpha
    
    jmp is_not_alpha

is_alpha:
    mov rax, 1
    jmp return

is_not_alpha:
    mov rax, 0
    jmp return

return:
    ret
