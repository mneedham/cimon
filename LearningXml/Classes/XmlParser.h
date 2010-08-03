//
//  XmlParser.h
//  LearningXml
//
//  Created by Mark Needham on 03/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LearningXmlAppDelegate, Book;

@interface XmlParser : NSObject {
	
	NSMutableString *currentElementValue;
	
	LearningXmlAppDelegate *appDelegate;
	Book *aBook;
}

- (XmlParser *) initXMLParser;

@end