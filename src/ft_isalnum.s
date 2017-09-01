# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:50:04 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:50:07 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalnum

section .text

_ft_isalnum:
    mov rax, 1
    cmp rdi, 48
    js not_num ;jump sign
    cmp rdi, 58
    js is_num
    cmp rdi, 65 ;caps A
    js not_num
    cmp rdi, 91
    js is_num
    cmp rdi, 97 ;small a
    js not_num
    cmp rdi, 123
    js is_num

not_num:
    mov rax, 0
    jmp return
    
is_num:
    mov rax, 1
    jmp return

return:
    ret
