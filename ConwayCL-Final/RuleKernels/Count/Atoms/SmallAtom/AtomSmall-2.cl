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

	xoff = -4;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}


/*
:-4,-1,0,:-4,0,0,:-4,1,0,:-3,-3,0,:-3,-2,0,:-3,0,0,:-3,2,0,:-3,3,0,:-2,-3,0,:-2,-1,0,:-2,1,0,:-2,3,0,:-1,-4,0,:-1,-2,0,:-1,-1,0,:-1,0,0,:-1,1,0,:-1,2,0,:-1,4,0,:0,-4,0,:0,-3,0,:0,-1,0,:0,1,0,:0,3,0,:0,4,0,:1,-4,0,:1,-2,0,:1,-1,0,:1,0,0,:1,1,0,:1,2,0,:1,4,0,:2,-3,0,:2,-1,0,:2,1,0,:2,3,0,:3,-3,0,:3,-2,0,:3,0,0,:3,2,0,:3,3,0,:4,-1,0,:4,0,0,:4,1,0,
:0,99,0,:15,21,1,:6,6,1,
:0,99,0,:16,24,1,:6,6,1,
:0,99,0,:17,27,1,:6,6,1,
:0,99,0,:18,30,1,:6,6,1,
*/


	int c_out = 0;


	if(count >= 17 && count <= 27) {c_out = a[my_id] + 1;}
	if(count == 6) {c_out = a[my_id] + 1;}
	
	c[my_id] = c_out;

}
