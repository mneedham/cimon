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
	NSMutableArray *discardedItems = [NSMutableArray array];
	for (id item in dynamicallyAddedFields) {
		[discardedItems addObject:item];
		[item removeFromSuperview];
	}
	[dynamicallyAddedFields removeObjectsInArray:discardedItems];	
	
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
		
		UILabel *aLabel	= [self createLabelFrom:project withXCoordinate:x withYCoordinate:y];
		[dynamicallyAddedFields addObject:aLabel];
		[self.view addSubview: aLabel];
		
	}
	
}

-(UILabel*) createLabelFrom:(Project *)project withXCoordinate:(NSInteger)x withYCoordinate:(NSInteger)y  {
	UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 250, 100)];
	
	if([[project lastBuildStatus] isEqualToString:@"Success"]) {
		aLabel.backgroundColor = [UIColor greenColor];	
	} else {
		aLabel.backgroundColor = [UIColor redColor];		
	}
	
	aLabel.numberOfLines = 2;
	aLabel.text = [project name];
	aLabel.textAlignment = UITextAlignmentCenter;
	
	return [aLabel autorelease];
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
	
	dynamicallyAddedFields = [[NSMutableArray alloc] init];
	
	for(Project *project in theDelegate.projects) {		
		if(column1) {
			x = 30;
			y = y + 110;
			column1 = false;
		} else {
			x = 290;
			column1 = true;
		}
		
		UILabel *aLabel	= [self createLabelFrom:project withXCoordinate:x withYCoordinate:y];
				
		[dynamicallyAddedFields addObject:aLabel];
		[self.view addSubview:aLabel];
	
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
