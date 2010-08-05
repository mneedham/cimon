#import "XMLParser.h"

#import "Project.h"

@implementation XMLParser

- (XMLParser *) initXMLParser {	
	[super init];
	return self;
}

-(NSString *)currentElementValue {
	return currentElementValue;
}

@synthesize projects;

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict {
	
	if(!projects) {
		projects  = [[NSMutableArray alloc] init];
	}
	
	if([elementName isEqualToString:@"Project"]) {				
		NSString *name = [attributeDict objectForKey:@"name"];
		NSString *lastBuildStatus = [attributeDict objectForKey:@"lastBuildStatus"];
		
		Project *project = [[Project alloc] initWithName:name lastBuildStatus:lastBuildStatus];		
		[projects addObject:project];
		[project release];
	}
}


- (void)dealloc {
    [super dealloc];
	[currentElementValue release];
	[projects release];
}

@end