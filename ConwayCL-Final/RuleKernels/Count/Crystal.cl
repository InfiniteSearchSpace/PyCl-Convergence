__kernel void RunAutomata(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;


	xoff = -7;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}


	//:39,99,0,
	//:21,32,1,
	//:0,20,0,

	int c_out = a[my_id];		
	if(count >= 39) {c_out = 0;}
	if(count >= 21 && count <= 32) {c_out = a[my_id]+1;}
	if(count <= 20) {c_out = 0;}

	if(c_out >= 8) {c_out = 8;}
	c[my_id] = c_out;

}
