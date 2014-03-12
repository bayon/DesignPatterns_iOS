//
//  FBFViewController.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Observer.h"
#import "Subject.h"

@class Observer;
@class Subject;

@interface FBFViewController : UIViewController  <Observer, Subject>

@end
