//
//  Book.m
//  LearningXml
//
//  Created by Mark Needham on 03/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize title, author, summary, bookID;

- (void) dealloc {
	
	[summary release];
	[author release];
	[title release];
	[super dealloc];
}

@end
