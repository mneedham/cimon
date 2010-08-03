//
//  Book.h
//  LearningXml
//
//  Created by Mark Needham on 03/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Book : NSObject {
	
	NSInteger bookID;
	NSString *title; //Same name as the Entity Name.
	NSString *author; //Same name as the Entity Name.
	NSString *summary; //Same name as the Entity Name.
	
}

@property (nonatomic, readwrite) NSInteger bookID;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSString *summary;

@end