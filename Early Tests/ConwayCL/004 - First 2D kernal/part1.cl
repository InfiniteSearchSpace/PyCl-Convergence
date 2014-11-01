__kernel void part1(__global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i+5*j;

    c[id] = a[id] + id;
}
