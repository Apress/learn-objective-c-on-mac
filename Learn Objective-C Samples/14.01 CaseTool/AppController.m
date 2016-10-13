//
//  AppController.m
//  CaseTool
//
//  Created by markd on 8/6/08.
//  Copyright 2008 Length-O-Words.com. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id) init
{
	if (self = [super init]) {
		NSLog (@"init: text %@ / results %@",
			   textField, resultsField);
	}
	
	return (self);
	
} // init


- (void) awakeFromNib
{
	NSLog (@"awake: text %@ / results %@",
		   textField, resultsField);
	
	[textField setStringValue: @"Enter text here"];
	[resultsField setStringValue: @"Results"];
	
} // awakeFromNib


- (IBAction) uppercase: (id) sender
{
	NSString *original;
	original = [textField stringValue];
	
	NSString *uppercase;
	uppercase = [original uppercaseString];
	
	[resultsField setStringValue: uppercase];
	
} // uppercase


- (IBAction) lowercase: (id) sender
{
	NSString *original;
	original = [textField stringValue];
	
	NSString *lowercase;
	lowercase = [original lowercaseString];
	
	[resultsField setStringValue: lowercase];
	
} // lowercase

@end
