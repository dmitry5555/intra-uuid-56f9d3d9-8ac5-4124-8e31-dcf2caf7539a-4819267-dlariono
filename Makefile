# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlariono <dlariono@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/10 20:35:41 by dlariono          #+#    #+#              #
#    Updated: 2023/05/10 20:42:17 by dlariono         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printf.c

OBJ = $(SRC:.c=.o)

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJ)
	gcc -Wall -Werror -Wextra -c $(SRC) ft_printf.h
	ar -r $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
