//
//  HorizontalScroller.h
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <UIKit/UIKit.h>
// ADAPTER
@protocol HorizontalScrollerDelegate;

@interface HorizontalScroller : UIView
//ADAPTER
@property (weak) id<HorizontalScrollerDelegate> delegate;
- (void)reload;
/*
 The attribute of the property you created above is defined as weak. 
 This is necessary in order to prevent a retain cycle. 
 If a class keeps a strong pointer to its delegate and the delegate 
 keeps a strong pointer back to the conforming class, 
 your app will leak memory since neither class will 
 release the memory allocated to the other.
 */
@end

/**
 ADAPTER ----------uses protocol - - has to be declared AFTER the @interface
 */
@protocol HorizontalScrollerDelegate <NSObject>
// methods declaration goes in here
@required
// ask the delegate how many views he wants to present inside the horizontal scroller
- (NSInteger)numberOfViewsForHorizontalScroller:(HorizontalScroller*)scroller;

// ask the delegate to return the view that should appear at <index>
- (UIView*)horizontalScroller:(HorizontalScroller*)scroller viewAtIndex:(int)index;

// inform the delegate what the view at <index> has been clicked
- (void)horizontalScroller:(HorizontalScroller*)scroller clickedViewAtIndex:(int)index;

@optional
// ask the delegate for the index of the initial view to display. this method is optional
// and defaults to 0 if it's not implemented by the delegate
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller*)scroller;
@end
