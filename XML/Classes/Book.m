//
//  Book.m
//  XML
//
//  Created by iPhone SDK Articles on 11/23/08.
//  Copyright 2008 www.iPhoneSDKArticles.com.
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
