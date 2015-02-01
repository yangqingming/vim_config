#include <stdio.h>
#include <dlfcn.h>

int main()
{
	void* handle = 0;
	const char* myso = "./libtest.so";

	if ((handle = dlopen(myso, RTLD_NOW)) == 0)
	{
		printf("open is so error %s \n", dlerror());
		return -1;
	}
	void (*func) ();
	func = (void (*)())dlsym(handle, "_Z5Hellov");
	if (func == 0)
	{
		printf("Error function ptr is null%s \n", dlerror());
		return -1;
	}

	func();

	return 0;
}
