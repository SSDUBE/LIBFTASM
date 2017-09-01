#ifndef LIBFTASM_H
#define LIBFTASM_H

int     ft_toupper(int c);
int     ft_tolower(int c);
size_t	ft_strlen(char *s);
void    *ft_memset(void *b, int c, size_t len);
void    *ft_memcpy(void *dst, const void *src, size_t n);
int     ft_isdigit(int c);
int     ft_isascii(int c);
int     ft_isalpha(int c);
int     ft_isalnum(int c);
int     ft_puts(const char *s);
void    ft_bzero(void *s, size_t n);
char    *ft_strdup(const char *s1);
char    *ft_strcat(char *s1, const char *s2);
char    ft_cat(int fd);
char    ft_isprint(int c);

#endif