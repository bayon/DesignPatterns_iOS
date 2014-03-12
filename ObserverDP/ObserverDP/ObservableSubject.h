//
//  Observable.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteObserver.h"
@class ConcreteObserver;

@interface ObservableSubject : NSObject


@property (nonatomic,retain) NSMutableArray *observers;

-(void)attach:(id<NSObject>)observer;
-(void)detach:(id<NSObject>)observer;
//-(void)notify:(NSInvocation*)invocation;
-(void)notify:(NSString*)string;

@end
