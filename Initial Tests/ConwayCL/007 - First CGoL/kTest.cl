__kernel void Sum_A_ID(const int ySize, __global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

    c[id] = a[id] + id;
}

__kernel void getID(const int ySize, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

    c[id] = id;
}

__kernel void ToggleCell(const int ySize, __global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);

	unsigned int id = i + ySize*j;

	if(a[id]==0){c[id]=1;}else{c[id]=0;}

}

__kernel void Conway(const int ySize, __global int* a, __global int* c)
{

    unsigned int i = get_global_id(0);
	unsigned int j = get_global_id(1);
	unsigned int my_id = i + ySize*j;
	unsigned int count = 0;	

	if(a[my_id - 1] == 1) {count = count + 1;}
	if(a[my_id + 1] == 1) {count = count + 1;}
	if(a[my_id - 1 - ySize] == 1) {count = count + 1;}
	if(a[my_id - 1 + ySize] == 1) {count = count + 1;}
	if(a[my_id + 1 - ySize] == 1) {count = count + 1;}
	if(a[my_id + 1 + ySize] == 1) {count = count + 1;}
	if(a[my_id - ySize] == 1) {count = count + 1;}
	if(a[my_id + ySize] == 1) {count = count + 1;}

	if(count != 2){
		if(count==3){
			c[my_id]=1;
		}else{
			c[my_id]=0;
		}
	}

}

