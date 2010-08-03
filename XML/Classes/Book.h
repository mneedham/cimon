//
//  Book.h
//  XML
//
//  Created by iPhone SDK Articles on 11/23/08.
//  Copyright 2008 www.iPhoneSDKArticles.com.
//

#import <UIKit/UIKit.h>


@interface Book : NSObject {
	
	NSInteger bookID;
	NSString *title;	//Same name as the Entity Name.
	NSString *author;	//Same name as the Entity Name.
	NSString *summary;	//Same name as the Entity Name.
	
}

@property (nonatomic, readwrite) NSInteger bookID;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSString *summary;

@end
