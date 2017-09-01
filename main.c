/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdube <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/01 14:55:08 by sdube             #+#    #+#             */
/*   Updated: 2017/09/01 14:55:11 by sdube            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <strings.h>
#include <stdio.h>
#include <ctype.h>
#include <fcntl.h>
#include <unistd.h>
#include "includes/libfts.h"

//------------------------MEMSET---------------------------------------
void	test_memset()
{
    puts("---------------memeory set-----------------------");
    char data[20];
    ft_memset(data, '\0', 20);
    puts(data);
    ft_memset(data, 'A', 20);
    puts(data);
    puts("--------------end of memset--------------------------\n");
}
//---------------------------ISALPHA------------------------------------
void test_isalpha()
{
    puts("---------------isalphabet-----------------------");
    int i=0;
    char str[]="ABCD'\"++";
    while (str[i])
    {
      if (ft_isalpha(str[i]) == 1)
        printf ("character %c is alphabetic\n",str[i]);
      else
        printf ("character %c is not alphabetic\n",str[i]);
      i++;
    }
    puts("--------------end of isalphabert--------------------------\n");    
}
//----------------------------ISALNUM------------------------------------
void test_isalnum()
{
    puts("---------------isalnum-----------------------");
    int i=0;
    char str[]="0123ABz++}";
    while (str[i])
    {
      if (ft_isalnum(str[i]) == 1)
        printf ("character %c isalnum\n",str[i]);
      else
        printf ("character %c is not isalnum\n",str[i]);
      i++;
    }
    puts("--------------end of isalnum--------------------------\n");    
}
//-----------------------------IS ASCII----------------------------
void test_isascii()
{
    puts("---------------is ascii-----------------------");
    int i=0;
    char str[]="AB'CD'\"++";
    while (str[i])
    {
      if (ft_isascii(str[i]) == 1)
        printf ("character %c is ascii\n",str[i]);
      else
        printf ("character %c is not ascii\n",str[i]);
      i++;
    }
    puts("--------------end of is ascii--------------------------\n");    
}
//------------------------IS DIGIT-----------------------------------
void test_isdigit()
{
    puts("---------------is digit-----------------------");
    int i=0;
    char str[]="0123456789ABC";
    while (str[i])
    {
      if (ft_isdigit(str[i]) == 1)
        printf ("character %c is digit\n",str[i]);
      else
        printf ("character %c is not digit\n",str[i]);
      i++;
    }
    puts("--------------end of is digit--------------------------\n");    
}
//------------------------IS PRINt-----------------------------------
void test_isprint()
{
    puts("---------------is print-----------------------");
    int i=0;
    char str[]=" */45Ab";
    while (str[i])
    {
      if (ft_isprint(str[i]) == 1)
        printf ("character %c is printable\n",str[i]);
      else
        printf ("character %c is not printble\n",str[i]);
      i++;
    }
    puts("--------------end of is print--------------------------\n");    
}
//------------------------ToUpper-----------------------------------
void test_toupper()
{
    puts("---------------toUpper-----------------------");
    int letter = 'a';
    printf("Lowercase '%c' is '%c'\n", letter, ft_toupper(letter));
    puts("--------------end of toUpper--------------------------\n");    
}
//------------------------Tolower-----------------------------------
void test_tolower()
{
    puts("---------------tolower-----------------------");
    int letter = 'Z';
    printf("uppercase '%c' is '%c'\n", letter, ft_tolower(letter));
    puts("--------------end of tolwer--------------------------\n");    
}

//------------------------strlen-----------------------------------
void test_strlen()
{
    puts("---------------strlen-----------------------");
    char letter[20] = "sindiso";
    printf("lenght is %i\n", (int)ft_strlen(letter));
    puts("--------------end of strlen--------------------------\n");    
}
//------------------------bzero-----------------------------------
void test_bzero()
{
    puts("---------------bzero-----------------------");
    char letter[20] = "sindiso";
    printf("now is %s\n", letter);
    ft_bzero(letter, 3);
    printf("now is %c\n", letter[4]);
    puts("--------------end of bzero--------------------------\n");    
}
//------------------------memcpy-----------------------------------
void test_memcpy()
{
    puts("---------------memcpy-----------------------");
    char letter[30] = "mynameissindiso";
    char copied[5];
    ft_memcpy(copied, letter, 4);
    printf("memcpy is %s\n", copied);
    puts("--------------end of memcpy--------------------------\n");    
}
//------------------------puts-----------------------------------
void test_puts()
{
    puts("---------------puts-----------------------");
    ft_puts("my name is sindiso");
    puts("--------------end of puts--------------------------\n");    
}
//------------------------strcat-----------------------------------
void test_strcat()
{
    puts("---------------strcat-----------------------");
    char src[50], dest[50];
    
    strcpy(src,  "Sindiso");
    strcpy(dest, "Dube ");
    ft_strcat(dest, src);
    printf("%s\n", dest);
    puts("--------------end of strcat--------------------------\n");    
}
//------------------------strdup-----------------------------------
void test_strdup()
{
    puts("---------------strdup-----------------------");
    char src[50];
    
    strcpy(src,  "Sindiso");
    printf("%s\n", ft_strdup(src));
    puts("--------------end of strdub--------------------------\n");    
}

//------------------------cat-----------------------------------
void test_cat()
{
    puts("---------------cat-----------------------");
    int	fd = open("src/ft_bzero.ss", O_RDONLY);
    ft_cat(fd);
    close(fd);
    puts("--------------end of cat--------------------------\n");    
}

int main(void)
{
    test_memset();
    test_isalpha();
    test_isalnum();
    test_isascii();
    test_isdigit();
    test_isprint();
    test_toupper();
    test_tolower();
    test_strlen();
    test_bzero();
    test_memcpy();
    test_puts();
    test_strcat();
    test_strdup();
    test_cat();


    return (0);
}
