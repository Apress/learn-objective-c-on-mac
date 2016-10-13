#import <Foundation/Foundation.h>

static void dateFun (void) {
    NSDate *date = [NSDate date];
    NSLog (@"today is %@", date);
    
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow: -(24 * 60 * 60)];
    NSLog (@"yesterday is %@", yesterday);
} // dateFun


static void dataFun (void) {
    const char *string = "Hi there, this is a C string!";
    NSData *data = [NSData dataWithBytes: string
                           length: strlen(string) + 1];
    NSLog (@"data is %@", data);
    NSLog (@"%d byte string is '%s'", [data length], [data bytes]);
} // dataFun


static void atomicCafe (void) {
    NSArray *phrase;
    phrase = [NSArray arrayWithObjects: @"I", @"seem", @"to", @"be", @"a", @"verb", nil];
    [phrase writeToFile: @"/tmp/verbiage.txt"  atomically: YES];
    
    NSArray *phrase2 = [NSArray arrayWithContentsOfFile: @"/tmp/verbiage.txt"];
    NSLog (@"%@", phrase2);
    
} // atomicCafe


int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    dateFun ();
    dataFun ();
    atomicCafe ();

    [pool release];

    return (0);

} // main
