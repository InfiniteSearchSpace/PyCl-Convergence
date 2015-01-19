__kernel void RunAutomata(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	int sum = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;

	xoff = 0;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = 1;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = 1;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = 1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = 0;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = -1;
	yoff = 1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = -1;
	yoff = 0;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}

	xoff = -1;
	yoff = -1;
	my_offset_id = ((my_id + xoff)&(ySize-1) ) + ((j*ySize + ySize*yoff)&(tSize-1));
	if(a[my_offset_id] != 0) {sum += a[my_offset_id];}



//								(-8,-7, ..., 7, 8) : 17
//	For Negative (-1), become:	000+-+--0-++00000	

//	For Zero/Dead (0), become:	00000-00000+00000	

//	For Positive (1), become:	00000--+0++-+-000	






	//To get a value of cell in next generation, 
	//character with index of cell's neighbors count + 8 is looked up in line corresponding to this cell. 
	//Zero means cell dies, plus means it turns positive and minus means negative. 

	
	int finalSum = a[my_id];
	if(sum != 0 && (sum >= -5 && sum <= 5)) {
		if(a[my_id] == -1 	&& (sum == -5 || sum == -3 || sum == 2 || sum == 3) 	){finalSum = a[my_id]*-1;}		
		if(a[my_id] == 1 	&& (sum == 5 || sum == 3 || sum == -2 || sum == -3) ){finalSum = a[my_id]*-1;}
		if(a[my_id] == 0){
			finalSum = 0;
			if(sum == -3){finalSum = -1;}
			if(sum == 3){finalSum = 1;}
		}
	} else {finalSum = 0;}

	c[my_id] = finalSum;
}
