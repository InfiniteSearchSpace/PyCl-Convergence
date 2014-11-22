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

	
	
	
	xoff = -3;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -3;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 3;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	
/*:25,999,0,
:18,24,1,
:8,8,1,
:0,7,0,
:10,13,0,*/

	int c_out = a[my_id];
	
	if(count >= 25) {c_out = 0;}
	if(count >= 18 && count <= 24) {c_out = 1;}
	if(count >= 8 && count <= 8) {c_out = 1;}
	if(count >= 0 && count <= 7) {c_out = 0;}
	if(count >= 10 && count <= 13) {c_out = 0;}

	c[my_id] = c_out;

}
