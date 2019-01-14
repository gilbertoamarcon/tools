#include <stdlib.h>

int fill_cpu(){
	for(int i = 0; i < 1e99; i++);
	return 0;
}

int fill_mem(){
	for(int i = 0; i < 1e99; i++){
		int *aux = (int*)malloc(256*sizeof(int));
		for(int k = 0; k < 256; k++)
			aux[k] = k;

	}
	return 0;
}

int main(int argc, char **argv){
	if(argc == 1)
		return fill_cpu();
	else
		return fill_mem();
}