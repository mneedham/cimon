//
//  BookDetailViewController.h
//  XML
//
//  Created by iPhone SDK Articles on 11/23/08.
//  Copyright 2008 www.iPhoneSDKArticles.com.
//

#import <UIKit/UIKit.h>

@class Book;

@interface BookDetailViewController : UIViewController {

	IBOutlet UITableView *tableView;
	
	Book *aBook;
}

@property (nonatomic, retain) Book *aBook;

@end
