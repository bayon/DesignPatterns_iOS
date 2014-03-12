//
//  ConcreteObserver.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ConcreteObserver.h"

@implementation ConcreteObserver
@synthesize updated = _updated, concreteSubject = _concreteSubject;
-(void)update{
    
    NSLog(@"concrete observer update...");
    updated = [concreteSubject getState];
}
@end
