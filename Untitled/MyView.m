//
//  MyView.m
//  ThreeDateRule
//
//  Created by Mark Needham on 27/06/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"


@implementation MyView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
	NSString *hello   = @"C'mon England!!!";
	CGPoint  location = CGPointMake(10, 20);
	UIFont   *font    = [UIFont systemFontOfSize:30];
	[[UIColor whiteColor] set];
	[hello drawAtPoint:location withFont:font];
}

- (void)dealloc {
    [super dealloc];
}


@end
