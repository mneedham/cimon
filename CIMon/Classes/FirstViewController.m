//
//  FirstViewController.m
//  CIMon
//
//  Created by Mark Needham on 01/08/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FirstViewController.h"
#import "XMLParser.h"


@implementation FirstViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	appDelegate = (CIMonAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
	myLabel.backgroundColor = [UIColor redColor];
	myLabel.text = @"Project 1 :: Fast";
	myLabel.textAlignment = UITextAlignmentCenter;
	[self.view addSubview:myLabel];
		
	NSString* path = [[NSBundle mainBundle] pathForResource:@"cctray" ofType:@"xml"];
	NSURL *url = [[NSURL alloc] initWithString:@"http://sites.google.com/site/iphonesdktutorials/xml/Books.xml"];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	XMLParser *theDelegate = [[XMLParser alloc] initXMLParser];
	[xmlParser setDelegate:theDelegate];
	[xmlParser parse];

	
	UILabel *myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(250, 100, 200, 200)];
	myLabel2.backgroundColor = [UIColor greenColor];
	
	myLabel2.text = [theDelegate currentElementValue];
	myLabel2.textAlignment = UITextAlignmentCenter;
	[self.view addSubview:myLabel2];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
