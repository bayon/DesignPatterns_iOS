//
//  Observer.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Observer.h"

@implementation Observer
-(void)startObserverProcess{
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(observerProcessCompleted) userInfo:nil repeats:NO];
}

-(void)update{
    
}

-(void) setSubject:(Subject *)subject{
    
}

@end