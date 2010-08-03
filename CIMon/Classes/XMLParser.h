//
//  XMLParser.h
//  CIMon
//
//  Created by Mark Needham on 03/08/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMLAppDelegate, Book;

@interface XMLParser : NSObject {
	
	NSMutableString *currentElementValue;
		
}

- (NSString *)getCurrentElementValue;
- (XMLParser *) initXMLParser;

@end
