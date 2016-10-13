#import <Cocoa/Cocoa.h>

@interface AppController : NSObject {
	IBOutlet NSTextField *textField;
	IBOutlet NSTextField *resultsField;
}

- (IBAction) uppercase: (id) sender;
- (IBAction) lowercase: (id) sender;

@end // AppController
