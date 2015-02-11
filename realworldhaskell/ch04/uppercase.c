/* Ensures that every letter in a string is uppercase. */
#include <ctype.h>
char *uppercase (const char *in)
{
    char *out = strdup (in);
    if (out != NULL)
    {
        for (size_t i = 0; out[i] != '\0'; i++)
        {
            out[i] = toupper (out[i]);
        }
    }
    return out;
}
