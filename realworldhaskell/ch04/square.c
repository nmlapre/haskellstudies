/* Squares every element in an array. */
void square (double *out, const double *in, size_t length) 
{
    for (size_t i = 0; i < length; i++)
    {
        out[i] = in[i] * in[i];
    }
}
