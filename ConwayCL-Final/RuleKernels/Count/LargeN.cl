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


	
	xoff = -48;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -48;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -48;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -48;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -46;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -46;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -44;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -44;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -42;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -42;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -40;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -39;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -38;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -37;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = -30;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -36;
	yoff = 30;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -35;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -34;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -33;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -33;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -33;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -33;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -32;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -31;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -31;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -30;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -30;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = -42;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -24;
	yoff = 42;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -23;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -22;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -21;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -20;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -19;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -44;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -18;
	yoff = 44;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = -15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -17;
	yoff = 15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -16;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -15;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -15;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -15;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -15;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -14;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -13;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -46;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -12;
	yoff = 46;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -11;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -10;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -9;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -31;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 31;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -8;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -7;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -6;
	yoff = 48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = 40;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 23;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 33;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 34;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = 48;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 32;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 35;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 7;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -31;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 31;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 37;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 38;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 8;
	yoff = 39;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 9;
	yoff = 22;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 10;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 11;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -46;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = -16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 16;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 21;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 12;
	yoff = 46;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 13;
	yoff = 20;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 14;
	yoff = 19;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 15;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 15;
	yoff = -17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 15;
	yoff = 17;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 15;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 16;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = -15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 17;
	yoff = 15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -44;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 15;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 18;
	yoff = 44;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = -14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 19;
	yoff = 14;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = -13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 20;
	yoff = 13;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = -11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = -10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = 10;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = 11;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 21;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = -9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 22;
	yoff = 9;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 23;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = -42;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 24;
	yoff = 42;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 30;
	yoff = -36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 30;
	yoff = 36;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 31;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 31;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 32;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 33;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 33;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 33;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 33;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 34;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 35;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = -30;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 36;
	yoff = 30;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 37;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 38;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = -1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 1;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 7;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 39;
	yoff = 8;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = -5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = -4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = -3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = 3;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = 4;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 40;
	yoff = 5;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 42;
	yoff = -24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 42;
	yoff = 24;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 44;
	yoff = -18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 44;
	yoff = 18;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 46;
	yoff = -12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 46;
	yoff = 12;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 48;
	yoff = -6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 48;
	yoff = -2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 48;
	yoff = 2;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 48;
	yoff = 6;
	my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] != 0) {count += 1;}

	int c_out = a[my_id];
	if(count >= 74) {c_out = 0;}

	/*if(count == 29) {c_out = 0;}
	if(count == 31) {c_out = 0;}
	if(count == 41) {c_out = 0;}
	if(count == 43) {c_out = 0;}
	if(count == 59) {c_out = 0;}
	

	if(count == 16) {c_out = a[my_id]+1;}
	if(count == 25) {c_out = a[my_id]+1;}
	if(count == 36) {c_out = a[my_id]+1;}
	if(count == 49) {c_out = a[my_id]+1;}
	if(count == 64) {c_out = a[my_id]+1;}*/
	
	if(count == 29) {c_out = a[my_id]+1;}
	if(count == 31) {c_out = a[my_id]+1;}
	if(count == 41) {c_out = a[my_id]+1;}
	if(count == 43) {c_out = a[my_id]+1;}
	if(count == 59) {c_out = a[my_id]+1;}
	
	if(count == 16) {c_out = 0;}
	if(count == 25) {c_out = 0;}
	if(count == 36) {c_out = 0;}
	if(count == 49) {c_out = 0;}
	if(count == 64) {c_out = 0;}

	c[my_id] = c_out;

}
