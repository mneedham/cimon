//
//  FirstViewController.m
//  CIMon
//
//  Created by Mark Needham on 01/08/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FirstViewController.h"
#import "XMLParser.h"
#import "Project.h"

@implementation FirstViewController

@synthesize textField;

- (IBAction) updateText:(id) sender {	
	for (UIView *view in self.view.subviews) {
		if([view class] == [UILabel class]) {
			[view removeFromSuperview];
		}
	}
	
	NSURL *url = [NSURL URLWithString:textField.text];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	XMLParser *theDelegate = [[XMLParser alloc] initXMLParser];
	[xmlParser setDelegate:theDelegate];
	[xmlParser parse];
	
	NSInteger x = 30;
	NSInteger y = 0;
	NSInteger column1 = true;
	for(Project *project in theDelegate.projects) {		
		if(column1) {
			x = 30;
			y = y + 110;
			column1 = false;
		} else {
			x = 290;
			column1 = true;
		}
		
		UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 250, 100)];
		
		
		if([[project lastBuildStatus] isEqualToString:@"Success"]) {
			aLabel.backgroundColor = [UIColor greenColor];	
		} else {
			aLabel.backgroundColor = [UIColor redColor];		
		}
		
		aLabel.numberOfLines = 2;
		aLabel.text = [project name];
		aLabel.textAlignment = UITextAlignmentCenter;
		
		[self.view addSubview:aLabel];
		[aLabel release];
		
	}
	
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	appDelegate = (CIMonAppDelegate *)[[UIApplication sharedApplication] delegate];
			
	NSURL *url = [NSURL URLWithString:@"http://10.12.1.177/hudson/cc.xml"];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	XMLParser *theDelegate = [[XMLParser alloc] initXMLParser];
	[xmlParser setDelegate:theDelegate];
	[xmlParser parse];
		
	NSInteger x = 30;
	NSInteger y = 0;
	NSInteger column1 = true;
	for(Project *project in theDelegate.projects) {		
		if(column1) {
			x = 30;
			y = y + 110;
			column1 = false;
		} else {
			x = 290;
			column1 = true;
		}
		
		UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 250, 100)];
		
		
		if([[project lastBuildStatus] isEqualToString:@"Success"]) {
			aLabel.backgroundColor = [UIColor greenColor];	
		} else {
			aLabel.backgroundColor = [UIColor redColor];		
		}
		
		aLabel.numberOfLines = 2;
		aLabel.text = [project name];
		aLabel.textAlignment = UITextAlignmentCenter;
		
		[self.view addSubview:aLabel];
		[aLabel release];
	
	}
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
