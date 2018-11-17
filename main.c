#include <strings.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>

char	*ft_strchr(char *str, int c);

int				main(int argc, char **argv)
{
	char	*str = strdup("abcdefghjk");

	printf("ret : %s\n", ft_strchr("42FileChecker", 0));
	printf("ret : %s\n", ft_strchr(str, 'c'));
	printf("ret : %s\n", ft_strchr(str, 'o'));
	return (0);
}