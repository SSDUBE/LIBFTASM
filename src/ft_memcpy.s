# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdube <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 14:51:03 by sdube             #+#    #+#              #
#    Updated: 2017/09/01 14:51:05 by sdube            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_memcpy

section .text

_ft_memcpy:
    push rdi
    mov rcx, rdx
    cld
    rep ;repeat condition until cx is 0;
    movsb ;moves bites from source index to destination index

end:
    pop rax
    ret
