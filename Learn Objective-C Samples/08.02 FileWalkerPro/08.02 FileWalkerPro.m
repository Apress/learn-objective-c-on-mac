#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
    NSFileManager *manager;
    manager = [NSFileManager defaultManager];
	
    NSString *home;
    home = [@"~" stringByExpandingTildeInPath];
	
    NSMutableArray *files;
    files = [NSMutableArray arrayWithCapacity: 42];
	
	for (NSString *filename in [manager enumeratorAtPath: home]) {
		if ([[filename pathExtension] 
			isEqualTo: @"jpg"]) {
			[files addObject: filename];
		}		
	}
	
	for (NSString *filename in files) {
		NSLog (@"%@", filename);
	}
	
    [pool drain];
    return 0;
}
