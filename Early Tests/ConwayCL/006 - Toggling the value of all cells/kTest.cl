__kernel void Sum_A_ID(const int ySize, __global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

    c[id] = a[id] + id;
}

__kernel void getID(const int ySize, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

    c[id] = id;
}

__kernel void ToggleCell(const int ySize, __global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

	if(a[id]==0){c[id]=1;}else{c[id]=0;}

}