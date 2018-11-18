# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ysan-seb <ysan-seb@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/07 09:40:00 by ysan-seb          #+#    #+#              #
#    Updated: 2018/11/18 16:55:13 by ysan-seb         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

CC = gcc

FLAG = -Wall -Werror -Wextra

SRC = 	ft_bzero.s \
		ft_isalnum.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isdigit.s \
		ft_isprint.s \
		ft_tolower.s \
		ft_toupper.s \
		ft_strcat.s \
		ft_puts.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_strchr.s \
		ft_memchr.s \
		ft_isspace.s \
		ft_isupper.s \
		ft_islower.s \
		ft_memalloc.s \
		ft_strequ.s

OBJ = $(SRC:.s=.o)

DIR_HEADER = -I./

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.s
	nasm -g -f macho64 -o $@ $< 

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean
	make

.PHONY: all clean fclean re
