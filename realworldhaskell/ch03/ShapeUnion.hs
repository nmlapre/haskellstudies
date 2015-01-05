-- file: ch03/ShapeUnion.hs

{-|

compare to the following code in C/C++

enum shape_type {
    shape_circle,
    shape_poly,
};
struct circle {
    struct vector centre;
    float radius;
};
struct poly {
    size_t num_Vertices;
    struct vector *vertices;
};
struct shape
{
    enum shape_type type;
    union {
        struct circle circle;
        struct poly poly;
    } shape;
};

|-}

type Vector = (Double, Double)
data Shape = Circle Vector Double
           | Poly [Vector]

