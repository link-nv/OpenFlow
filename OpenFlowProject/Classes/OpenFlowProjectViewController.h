//
//  OpenFlowProjectViewController.h
//  OpenFlowProject
//
//  Created by jonathan on 1/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFOpenFlowView.h"

@interface OpenFlowProjectViewController : UIViewController <AFOpenFlowViewDataSource, AFOpenFlowViewDelegate> {
    AFOpenFlowView *openFlowView;
	NSArray *coverImageData;
	NSDictionary *interestingPhotosDictionary;
	NSOperationQueue *loadImagesOperationQueue;
}

- (void)imageDidLoad:(NSArray *)arguments;

@property(nonatomic, retain) IBOutlet AFOpenFlowView *openFlowView;

@end

