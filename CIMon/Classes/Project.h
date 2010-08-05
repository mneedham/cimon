//
//  Project.h
//  CIMon
//
//  Created by Mark Needham on 04/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

@interface Project : NSObject {
	NSString *name;
	NSString *lastBuildStatus;
}
- (Project *) initWithName:(NSString *)name lastBuildStatus:(NSString *)lastBuildStatus;

@property(copy, readwrite) NSString *name;
@property(copy, readwrite) NSString *lastBuildStatus;


@end
