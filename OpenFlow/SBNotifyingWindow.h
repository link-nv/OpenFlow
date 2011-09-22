//
//  SBNotifyingWindow.h
//  GdataI
//
//  Created by Jonathan Saggau on 6/29/09.
//  Copyright 2009 Sounds Broken inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SBNotifyingWindow : UIWindow {
    NSMutableSet *objects;
}

//allows an object to observe touch events in a given view
-(void)addObjectInterestedInTouches:(id )anObject;
-(void)removeObjectWithInterest:(id)anObject;

@end

@protocol SBNotifyingWindowTouches

@optional

-(void)interestingEvent:(UIEvent *)event;

@end
