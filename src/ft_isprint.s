# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:50:51 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:50:54 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global  _ft_isprint

section .text

_ft_isprint:
    cmp rdi, 32
    jl not_printable
    cmp rdi, 127
    jg not_printable

is_printable:
    mov rax, 1 ; set the accumulator to true
    jmp return

not_printable:
    mov rax, 0 ; set the accumulator to false
    jmp return

return:
    ret
