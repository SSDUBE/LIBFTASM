NAME = libfts.a

NAME_TEST = test

AS = nasm

ASFLAGS = -f macho64

CC = cc -Wall -Wextra -Werror

LIBS = -L ./ -lfts

SRC = ./src/ft_toupper.s \
	  ./src/ft_tolower.s \
	  ./src/ft_strlen.s \
	  ./src/ft_memset.s \
	  ./src/ft_memcpy.s \
	  ./src/ft_isprint.s \
	  ./src/ft_isdigit.s \
	  ./src/ft_isascii.s \
	  ./src/ft_isalpha.s \
	  ./src/ft_isalnum.s \
	  ./src/ft_puts.s \
	  ./src/ft_strcat.s \
	  ./src/ft_cat.s \
	  ./src/ft_strdup.s \
	  ./src/ft_bzero.s

OBJ = $(SRC:.s=.o)

.PHONY: clean fclean re test clean_test

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

test: $(OBJ) main.c
	$(CC) main.c $(LIBS) -o $(NAME_TEST)

clean_test:
	rm -f $(NAME_TEST)
