#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
	const char *words[4] = { "aardvark", "abacus", 
							 "allude", "zygote" };
	int wordCount = 4;
	
	int i;
	for (i = 0; i < wordCount; i++) {
		NSLog (@"%s is %d characters long",
			   words[i], strlen(words[i]));
	}
	
	return (0);
	
} // main
