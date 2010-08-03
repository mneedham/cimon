//
//  MarkAppDelegate.m
//  Untitled
//
//  Created by Mark Needham on 19/06/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MarkAppDelegate.h"
#import "HelloWorldViewController.h"
#import "MyView.h"

@implementation MarkAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	//MyView *view = [[MyView alloc] initWithFrame:[window frame]];
	//[window addSubview:view];
	//[view release];
	//[window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    //[viewController release];
    [window release];
    [super dealloc];
}


@end
