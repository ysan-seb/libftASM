#include <strings.h>
#include <stdlib.h>
#include <stdio.h>

int				ft_isalpha(int n);
int				ft_isdigit(int n);
int				ft_isalnum(int n);
int				ft_isascii(int n);
int				ft_isprint(int n);
int				ft_toupper(int n);
int				ft_tolower(int n);
void			ft_bzero(void *s, size_t n);
void			ft_puts(char *str);

char			*ft_strcat(char *restrict s1, const char *restrict s2);

int				main(int argc, char **argv)
{
	int			i;
	char		*str;

	if (argc == 4)
	{
		i = atoi(argv[1]);
		str = (char *)malloc(sizeof(char) * 100);
		str[0] = 0;
		if (i == 0)
		{
			str = ft_strcat(str, argv[2]);
			str = ft_strcat(str, argv[3]);
			printf("%s", str);
		}
	}
	return (0);
}