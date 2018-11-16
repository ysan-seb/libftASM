#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char                    *ft_strdup(const char *s1);

int                             main(int argc, char **argv)
{
        int                     i;
        char            *str;


                        str = ft_strdup(argv[1]);
                        printf("%s", str);
                        free(str);
        return (0);
}