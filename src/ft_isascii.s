# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:50:31 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:50:33 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global  _ft_isascii

section .text
    cmp rdi, 0
    jl is_not_ascii
    cmp rdi, 128
    jg is_not_ascii

_ft_isascii:
    mov rax, 1
    jmp return
    
is_not_ascii:
    mov rax, 0
    jmp return

return:
    ret
