SRCS := ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_islower.c ft_isprint.c ft_isupper.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c
NAME = libft.a
CFLAGS = -Wall -Wextra -Werror
OBJS := $(SRCS:%.c=%.o)
BSRCS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstsize.c ft_lstnew.c
BOBJS = $(BSRCS:%.c=%.o)


%.o: %.c
	gcc $(CFLAGS) -c $^
$(NAME): $(OBJS)
	ar -crs $(NAME) $(OBJS)
bonus: $(BOBJS) $(OBJS)
	ar -crs $(NAME) $(OBJS) $(BOBJS)
all: $(NAME)
asan: $(OBJS)
	gcc -fsanitize=address $(OBJS) -o $(NAME)
clean:
	rm $(OBJS) $(BOBJS)
fclean: clean
	rm $(NAME)
re: fclean $(NAME)