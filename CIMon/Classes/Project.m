//
//  Project.m
//  CIMon
//
//  Created by Mark Needham on 04/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Project.h"


@implementation Project

@synthesize name;
@synthesize lastBuildStatus;

- (Project *) initWithName:(NSString *)name lastBuildStatus:(NSString *)lastBuildStatus {
	self.name = name;
	self.lastBuildStatus = lastBuildStatus;
	return self;
}

- (void)dealloc {
    [super dealloc];
}


@end
