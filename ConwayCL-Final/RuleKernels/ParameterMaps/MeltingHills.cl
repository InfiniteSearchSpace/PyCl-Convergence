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

	int NMax = 64;
    int modSize = ySize/NMax;

	int modx = i/modSize;
	int mody = j/modSize;

	int upper = modx%NMax;
    int birth = mody%NMax;
    int lower = 15;
	
    int BRange = 10;
    int BOffset = 0;


	xoff = -6;
	yoff = -7;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -5;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -4;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -9;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -3;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -2;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -6;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -10;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -6;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -6;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 2;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -9;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -5;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 3;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -4;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 4;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -3;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -2;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 5;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 6;
	yoff = -7;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}





	int c_out = a[my_id]; 

    if(count <= lower) {c_out = 0;}
    if(count >= birth+BOffset && count <= birth+BRange) {c_out = a[my_id] + 1;}
	if(count >= upper) {c_out = 0;} 
	
	c[my_id] = c_out;

}
