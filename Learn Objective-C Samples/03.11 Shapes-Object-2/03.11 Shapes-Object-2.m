#import <Foundation/Foundation.h>

// --------------------------------------------------
// constants for the different kinds of shapes and their colors

typedef enum {
	kRedColor,
	kGreenColor,
	kBlueColor
} ShapeColor;


// --------------------------------------------------
// Shape bounding rectangle


typedef struct {
	int x, y, width, height;
} ShapeRect;


// --------------------------------------------------
// convert from the ShapeColor enum value to a human-readable name

NSString *colorName (ShapeColor color)
{
	switch (color) {
		case kRedColor:
			return @"red";
			break;
		case kGreenColor:
			return @"green";
			break;
		case kBlueColor:
			return @"blue";
			break;
	}
	
	return @"no clue";
	
} // colorName


// --------------------------------------------------
// All about Circles

@interface Circle : NSObject
{
	ShapeColor	fillColor;
	ShapeRect	bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Circle


@implementation Circle

- (void) setFillColor: (ShapeColor) c
{
	fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
	bounds = b;
} // setBounds


- (void) draw
{
	NSLog (@"drawing a circle at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Circle




// --------------------------------------------------
// All about Rectangles

@interface Rectangle : NSObject
{
	ShapeColor	fillColor;
	ShapeRect	bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Rectangle


@implementation Rectangle

- (void) setFillColor: (ShapeColor) c
{
	fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
	bounds = b;
} // setBounds


- (void) draw
{
	NSLog (@"drawing a rectangle at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Rectangle


// --------------------------------------------------
// All about OblateSphereoids

@interface OblateSphereoid : NSObject
{
	ShapeColor	fillColor;
	ShapeRect	bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // OblateSphereoid


@implementation OblateSphereoid

- (void) setFillColor: (ShapeColor) c
{
	fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
	bounds = b;
} // setBounds


- (void) draw
{
	NSLog (@"drawing an egg at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // OblateSphereoid



// --------------------------------------------------
// All about Triangles

@interface Triangle : NSObject
{
	ShapeColor	fillColor;
	ShapeRect	bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Triangle


@implementation Triangle

- (void) setFillColor: (ShapeColor) c
{
	fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
	bounds = b;
} // setBounds


- (void) draw
{
	NSLog (@"drawing a triangle at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Triangle


// --------------------------------------------------
// Draw the shapes

void drawShapes (id shapes[], int count)
{
	int i;
	
	for (i = 0; i < count; i++) {
		id shape = shapes[i];
		[shape draw];
	}
	
} // drawShapes



// --------------------------------------------------
// The main function.  Make the shapes and draw them

int main (int argc, const char * argv[]) 
{
	id shapes[4];
	
	ShapeRect rect0 = { 0, 0, 10, 30 };
	shapes[0] = [Circle new];
	[shapes[0] setBounds: rect0];
	[shapes[0] setFillColor: kRedColor];
	
	ShapeRect rect1 = { 30, 40, 50, 60 };
	shapes[1] = [Rectangle new];
	[shapes[1] setBounds: rect1];
	[shapes[1] setFillColor: kGreenColor];
	
	ShapeRect rect2 = { 15, 19, 37, 29 };
	shapes[2] = [OblateSphereoid new];
	[shapes[2] setBounds: rect2];
	[shapes[2] setFillColor: kBlueColor];

	ShapeRect rect3 = { 47, 32, 80, 50 };
	shapes[3] = [Triangle new];
	[shapes[3] setBounds: rect3];
	[shapes[3] setFillColor: kRedColor];
	
	drawShapes (shapes, 4);
	
	return (0);
	
} // main

