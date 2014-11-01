__kernel void part1(__global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
    c[i] = a[i];
}
