#include <strings.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

// EBADF

int             ft_strequ(char const *s1, char const *s2);

int				main(int argc, char **argv)
{
	printf("%d\n", ft_strequ("tito", "toto"));

	printf("%d\n", ft_strequ("toto", "toto"));

	printf("%d\n", ft_strequ("hello world", "hello"));

	printf("%d\n", ft_strequ("", ""));

	printf("%d\n", ft_strequ(0, 0));

	printf("%d\n", ft_strequ(0, ""));

	printf("%d\n", ft_strequ("", 0));



}