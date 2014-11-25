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


	
	xoff = -14;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

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

	xoff = -4;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -4;
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
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -4;
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
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -4;
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
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -6;
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

	xoff = 4;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 0;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}



	int c_out = 0;

	if(count >= 125 && count <= 210) {c_out = a[my_id] + 1;}	
	if(count >= 35 && count <= 39) {c_out = a[my_id] + 1;}

	if(count <= 28) {c_out = 0;}
	

	c[my_id] = c_out;

}
