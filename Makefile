CXX =	g++

RM	=	rm -f

CXXFLAGS	+=	-Wextra	-Wall -Werror

LDFLAGS		+=	-ldl


NAME	=	server

SRCS	=	./src/main.cpp 	\

OBJS	=	$(SRCS:.cpp=.o)



$(NAME)	:	$(OBJS)
			$(CXX) -o $(NAME) $(OBJS) 

all	:	$(NAME) 

clean		:
				$(RM) $(OBJS)

fclean		:	clean
				$(RM) $(NAME)

re			: 	fclean all

.PHONY		:	all clean fclean re