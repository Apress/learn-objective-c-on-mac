#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
	FILE *wordFile = fopen ("/tmp/words.txt", "r");
	char word[100];
	
	while (fgets(word, 100, wordFile)) {
		// strip off the trailing \n
		word[strlen(word) - 1] = '\0';
		
		NSLog (@"%s is %d characters long",
			   word, strlen(word));
	}
	
	fclose (wordFile);
	
	return (0);
	
} // main
