#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *) description
{
    NSString *desc;
    desc = [NSString stringWithFormat: @"%d %d %d",
                     thing1, thing2, thing3];

    return (desc);

} // description

@end // CategoryThing
