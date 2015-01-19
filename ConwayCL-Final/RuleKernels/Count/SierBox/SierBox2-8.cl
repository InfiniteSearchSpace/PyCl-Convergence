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

	xoff = -1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 0;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {count += 1;}


	int c_out = a[my_id];
	if(count >= 3 && count <= 6){c_out = a[my_id] + 1;}
	if((count >= 2 && count <= 2) || count == 4) {c_out = 0;}
	
	if(c_out >= 1278) {c_out = 1278;}

	c[my_id] = c_out;


}
