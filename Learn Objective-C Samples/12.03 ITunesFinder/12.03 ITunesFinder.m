#import <Foundation/Foundation.h>
#import "ITunesFinder.h"

int main (int argc, const char *argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
	
    NSNetServiceBrowser *browser;
    browser = [[NSNetServiceBrowser alloc] init];
	
	ITunesFinder *finder;
	finder = [[ITunesFinder alloc] init];
	
	[browser setDelegate: finder];
	[browser searchForServicesOfType: @"_daap._tcp"
							inDomain: @"local."];
	
	NSLog (@"begun browsing");
	
	[[NSRunLoop currentRunLoop] run];
	
	[browser release];
	[finder release];
	
	[pool release];
	
	return (0);
	
} // main
