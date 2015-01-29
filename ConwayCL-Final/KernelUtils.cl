__kernel void GetWorld(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;

	c[my_id] = a[my_id];

}

__kernel void PlaceBlock(const int ySize, int mx, int my, int bs, __global int* a)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int mouse_id = mx + ySize*my;

	int a_out = a[my_id];

	if((i >= mx && i <= mx+bs) && (j >= my && j <= my+bs)) {a_out = 1;}	

	a[my_id] = a_out; 

}


__kernel void AddToBuffer(const int ySize, __global int* a, __global int* dest)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;

	//if(a[my_id] != 0) {dest[my_id] = a[my_id];}

	//if(dest[my_id] > 0) {dest[my_id] -= 1;}
	//if(a[my_id] != 0) {dest[my_id] = a[my_id]*8;}

	//if(dest[my_id] > 767) {dest[my_id] = 0;}
	if(dest[my_id] > 0) {dest[my_id] += 5;}
	if(dest[my_id] > 1278) {dest[my_id] = 0;}
	if(a[my_id] != 0) {dest[my_id] = a[my_id];}
	

}

__kernel void ReplaceBuffer(const int ySize, __global int* a, __global int* dest)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;

	if(dest[my_id] > 23) {dest[my_id] = 0;}
	if(dest[my_id] > 0) {dest[my_id] += 1;}
	if(a[my_id] != 0) {dest[my_id] = a[my_id];}

}

__kernel void BuildFrame(const int ySize, __global int* a, __global int* b, __global int* dest)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;

	int out = a[my_id];

	if(b[my_id] != 0) {
		out = b[my_id];
	}

	dest[my_id] = out; 

}

__kernel void BuildOnlyBoth(const int ySize, __global int* a, __global int* b, __global int* dest)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;

	int out = a[my_id];

	if(b[my_id] != 0 && a[my_id] != 0) {
		out = 1;
	}

	dest[my_id] = out; 

}
