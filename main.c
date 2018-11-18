#include <strings.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>

void	*_ft_memalloc(size_t size);

int				main(int argc, char **argv)
{
	char	*str = _ft_memalloc(0);
	if (!str)
		printf("NULL\n");
	str = _ft_memalloc(16);
	if (str)
		printf("Heap\n");
	return (0);
}
