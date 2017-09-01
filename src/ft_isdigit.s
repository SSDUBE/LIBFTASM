# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:50:41 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:50:44 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

section .text

_ft_isdigit:
    cmp rdi, 48
    jl is_not_digit
    cmp rdi, 58
    jg is_not_digit

is_digit:
    mov rax, 1
    jmp return

is_not_digit:
    mov rax, 0
    jmp return

return:
    ret
