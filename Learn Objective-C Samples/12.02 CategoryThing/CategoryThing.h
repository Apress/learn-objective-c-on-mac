#import <Foundation/Foundation.h>

@interface CategoryThing : NSObject {
  int thing1;
  int thing2;
  int thing3;
}

@end // CategoryThing


@interface CategoryThing (Thing1)
- (void) setThing1: (int) thing1;
- (int) thing1;

@end // CategoryThing (Thing1)


@interface CategoryThing (Thing2)

- (void) setThing2: (int) thing2;
- (int) thing2;

@end // CategoryThing (Thing2)


@interface CategoryThing (Thing3)

- (void) setThing3: (int) thing3;
- (int) thing3;

@end // CategoryThing (Thing3)

