//
//  ConcreteObserver.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverAbstract.h"
#import "ConcreteSubject.h"

@interface ConcreteObserver : ObserverAbstract{
    BOOL updated;
    ConcreteSubject *concreteSubject;
}
@property (nonatomic, retain) ConcreteSubject *concreteSubject;
@property (nonatomic) BOOL updated;
-(void)update;
@end
