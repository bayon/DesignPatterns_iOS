//
//  ConcreteVC.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConcreteSubject.h"
#import "ConcreteObserver.h"

@interface ConcreteVC : UIViewController
{
    ConcreteSubject *concreteSubject;
}
@property (nonatomic, retain) ConcreteSubject *concreteSubject;
@end
