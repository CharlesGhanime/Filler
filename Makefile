# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cghanime <cghanime@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/09 17:40:32 by cghanime          #+#    #+#              #
#    Updated: 2019/09/09 18:04:35 by cghanime         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

##############
##          ##
##  COLORS  ##
##          ##
##############

YELLOW = \033[033m
GREEN = \033[032m
BLUE = \033[36m
RED = \033[031m
PURPLE = \033[35m
RESET = \033[0m

################
##            ##
##  MAKEFILE  ##
##            ##
################

NAME = assets/players/cghanime.filler

SRCS := srcs/*.c

CFLAGS = -Wall -Wextra -Werror -I./inc

OBJ = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	make -C libft
	gcc -o $(NAME) $(CFLAGS) $(OBJ) libft/libft.a
	printf("$(GREEN)+$(RESET)")

clean:
	make clean -C libft
	rm -rf $(OBJ)

fclean:
	make fclean -C libft
	rm -f $(NAME)

re: fclean all

