__kernel void Conway(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	if(a[my_id - 1] == 1) {count += 1;}
	if(a[my_id + 1] == 1) {count += 1;}
	if(a[my_id - 1 - ySize] == 1) {count += 1;}
	if(a[my_id - 1 + ySize] == 1) {count += 1;}
	if(a[my_id + 1 - ySize] == 1) {count += 1;}
	if(a[my_id + 1 + ySize] == 1) {count += 1;}
	if(a[my_id - ySize] == 1) {count += 1;}
	if(a[my_id + ySize] == 1) {count += 1;}

	c[my_id] = (count == 3) || (count == 2) && (a[my_id] != 0);

	/*if(count != 2){
		if(count==3){
			c[my_id]=1;
		}else{
			c[my_id]=0;
		}
	}*/

}

__kernel void Evolver(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	if(a[my_id - 1] == 1) {count += 1;}
	if(a[my_id + 1] == 1) {count += 1;}
	if(a[my_id - 1 - ySize] == 1) {count += 1;}
	if(a[my_id - 1 + ySize] == 1) {count += 1;}
	if(a[my_id + 1 - ySize] == 1) {count += 1;}
	if(a[my_id + 1 + ySize] == 1) {count += 1;}
	if(a[my_id - ySize] == 1) {count += 1;}
	if(a[my_id + ySize] == 1) {count += 1;}

	if(a[my_id - 2] == 1) {count += 1;}
	if(a[my_id + 2] == 1) {count += 1;}
	if(a[my_id - ySize*2] == 1) {count += 1;}
	if(a[my_id + ySize*2] == 1) {count += 1;}

	if(a[my_id - 1 - ySize*2] == 1) {count += 1;}
	if(a[my_id - 1 + ySize*2] == 1) {count += 1;}
	if(a[my_id + 1 - ySize*2] == 1) {count += 1;}
	if(a[my_id + 1 + ySize*2] == 1) {count += 1;}

	if(a[my_id - 2 - ySize*2] == 1) {count += 1;}
	if(a[my_id - 2 + ySize*2] == 1) {count += 1;}
	if(a[my_id + 2 - ySize*2] == 1) {count += 1;}
	if(a[my_id + 2 + ySize*2] == 1) {count += 1;}

	if(a[my_id - 2 - ySize] == 1) {count += 1;}
	if(a[my_id - 2 + ySize] == 1) {count += 1;}
	if(a[my_id + 2 - ySize] == 1) {count += 1;}
	if(a[my_id + 2 + ySize] == 1) {count += 1;}

	c[my_id] = (count == 4);

}

__kernel void ConwayTorus(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;
	
	//my_offset_id = ((my_id + xoff%ySize)%ySize + j*ySize + ySize*yoff)%tSize; //old	
	//my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;	//new

	xoff = 0;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	int c_out = a[my_id];		
	if(count >= 4) {c_out = 0;}
	if(count == 3) {c_out = 1;}
	if(count <= 1) {c_out = 0;}
	c[my_id] = c_out;


}

__kernel void EvolverTorus(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;

	xoff = 0;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 2;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 1;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = 0;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -2;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	xoff = -1;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}

	c[my_id] = (count == 4);
}




__kernel void AtomTorus(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;


	xoff = -10;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -10;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -10;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -9;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -8;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -8;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -8;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -8;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -7;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = -8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = 8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 10;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 9;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = -8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = 8;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = -7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 7;
	yoff = 7;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 8;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 8;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 8;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 8;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 9;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 10;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 10;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 10;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}


	//:126,999,0,
	//:64,71,1,
	//:71,121,1,
	//:63,74,0,
	
	//if((count > 45 && count < 122) || count > 125){
		int c_out = 0;
		if(count <= 19) {c_out = 0;}
		if(count >= 101) {c_out = 0;}
		if(count >= 20 && count <= 24) {c_out = 1;}
		if(count >= 51 && count <= 100) {c_out = 1;}
		if(count >= 24 && count <= 58) {c_out = 0;}

		c[my_id] = c_out;
	//}

}


__kernel void WaveTorus(const int ySize, __global int* a, __global int* c)
{
    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	unsigned int my_offset_id = 0;
	unsigned int tSize = ySize*ySize;
	
	int xoff = 0;
	int yoff = 0;





	xoff = -6;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -6;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -5;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -4;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -3;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -2;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = -1;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 0;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 1;
	yoff = 6;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 2;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 3;
	yoff = 5;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 4;
	yoff = 4;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 2;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 5;
	yoff = 3;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = -1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = 0;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}




	xoff = 6;
	yoff = 1;
	my_offset_id = (my_id + xoff)%ySize + (j*ySize + ySize*yoff)%tSize;
	if(a[my_offset_id] == 1) {count += 1;}


	//:44,99,0,
	//:30,41,1,
	//:0,22,0,


	int c_out = a[my_id];
		
	if(count >= 44) {c_out = 0;}
	if(count >= 30 && count <= 41) {c_out = 1;}
	if(count <= 22) {c_out = 0;}

	c[my_id] = c_out;



}