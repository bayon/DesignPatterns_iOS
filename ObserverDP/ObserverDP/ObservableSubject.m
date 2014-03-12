//
//  Observable.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ObservableSubject.h"

@implementation ObservableSubject
@synthesize observers;

- (id)init
{
    self = [super init];
    if (self) {
        observers = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)attach:(id<NSObject>)observer{
    NSLog(@"Attaching :%@",observer);
    [observers addObject:observer];
}

-(void)detach:(id<NSObject>)observer{
    [observers removeObject:observer];
}

//-(void)notify:(NSInvocation*)invocation;
-(void)notify:(NSString*)string{
    NSLog(@"notify: %@",string);
    
    for(ConcreteObserver *co in observers){
        [co update];
    }
}
@end
