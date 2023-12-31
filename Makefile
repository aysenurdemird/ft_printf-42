NAME	= libftprintf
CC = gcc
INC = ft_printf.h
CFLAGS = -Wall -Wextra -Werror
ARFLAGS = -rcs
RM = rm -rf

SRCS	= ft_printf_utils.c	ft_printf.c ft_printnbr.c ft_printpointer.c ft_printunbr.c ft_printx.c 	
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar $(ARFLAGS) $(NAME).a $(OBJS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME).a

re: fclean all

.PHONY: all, clean, fclean, re
