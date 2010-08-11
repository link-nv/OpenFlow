//
//  OpenFlowProjectAppDelegate.m
//  OpenFlowProject
//
//  Created by jonathan on 1/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "OpenFlowProjectAppDelegate.h"
#import "OpenFlowProjectViewController.h"

@implementation OpenFlowProjectAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [application setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
