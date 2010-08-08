//
//  FirstViewController.h
//  CIMon
//
//  Created by Mark Needham on 01/08/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CIMonAppDelegate.h"


@interface FirstViewController : UIViewController {
	CIMonAppDelegate *appDelegate;
	IBOutlet UITextField *textField;
	NSMutableArray *dynamicallyAddedFields;
}

@property (nonatomic retain) IBOutlet UITextField *textField;

- (IBAction) updateText:(id) sender;
@end
