__kernel void part1(__global float* a, __global float* c)
{
    unsigned int i = get_global_id(0);

    c[i] = a[i] + a[i];
}
