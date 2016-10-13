#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject {
	NSString *appellation;
    NSMutableArray *tires;
    Engine *engine;
}

@property (readwrite, copy) NSString *name;
@property (readwrite, retain) Engine *engine;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car
