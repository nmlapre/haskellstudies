/*
 * This function will take a string of decimal digits and turn them
 * into an integer. Note that Haskell has no looping construct.
 */
int as_int (char *str)
{
    int acc; /* accumulate the partial result */
    for ( acc = 0; isdigit (*str); str++) {
        acc = acc * 10 + (*str - '0');
    }
    return acc;
}
