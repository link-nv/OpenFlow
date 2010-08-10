
#import "OpenFlowProjectViewController.h"
#import "AFGetImageOperation.h"

@implementation OpenFlowProjectViewController

@synthesize openFlowView;

#pragma mark -
#pragma mark View Lifecycle

-(void)viewDidLoad
{
    if(!loadImagesOperationQueue)
        loadImagesOperationQueue = [[NSOperationQueue alloc] init];
    [(AFOpenFlowView *)self.openFlowView setNumberOfImages:30]; 
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

#pragma mark -
#pragma mark Handle Images
- (void)imageDidLoad:(NSArray *)arguments {
	UIImage *loadedImage = (UIImage *)[arguments objectAtIndex:0];
	NSNumber *imageIndex = (NSNumber *)[arguments objectAtIndex:1];
	[(AFOpenFlowView *)self.openFlowView setImage:loadedImage forIndex:[imageIndex intValue]];
}

#pragma mark -
#pragma mark AFOpenFlowView Data Source

- (UIImage *)defaultImage {
	return [UIImage imageNamed:@"default.png"];
}

- (void)openFlowView:(AFOpenFlowView *)openFlowView requestImageForIndex:(int)index {
	AFGetImageOperation *getImageOperation = [[AFGetImageOperation alloc] initWithIndex:index viewController:self];
	[loadImagesOperationQueue addOperation:getImageOperation];
	[getImageOperation release];
}

#pragma mark -
#pragma mark AFOpenFlowView Delegate

- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index {
	NSLog(@"Cover Flow selection did change to %d", index);
}

#pragma mark -
#pragma mark Memory Management

- (void)viewDidUnload
{
    [loadImagesOperationQueue release]; loadImagesOperationQueue = nil;
    [openFlowView release]; openFlowView = nil;
}

- (void)dealloc {
	[loadImagesOperationQueue release]; loadImagesOperationQueue = nil;
    [openFlowView release]; openFlowView = nil;
    [super dealloc];
}

@end