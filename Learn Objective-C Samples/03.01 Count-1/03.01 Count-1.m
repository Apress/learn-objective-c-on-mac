#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) 
{
	NSLog (@"The numbers from 1 to 5:");
	
	int i;
	for (i = 1; i <= 5; i++) {
		NSLog (@"%d\n", i);
	}
	
	return (0);
	
} // main
