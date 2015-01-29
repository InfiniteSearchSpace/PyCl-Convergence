__kernel void RunAutomata(const int ySize, const int offset, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;

	if((i+(offset)) % (j)  == 0) {c[my_id] = a[my_id]+1;} else {c[my_id] = 0;}


}
