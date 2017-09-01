# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:51:13 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:51:15 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_memset

section .text

_ft_memset:
    push rdi
    mov  rax, rsi
    mov  rcx, rdx
    cld
    rep ;repeat operation until cx is 0
    stosb ;store bite in register

end:
    pop rax
    ret;

