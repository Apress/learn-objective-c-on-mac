#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) 
{
	int count = 100;
	
	NSLog (@"The numbers from 1 to %d:", count);
	
	int i;
	for (i = 1; i <= count; i++) {
		NSLog (@"%d\n", i);
	}
	
	return (0);
	
} // main
