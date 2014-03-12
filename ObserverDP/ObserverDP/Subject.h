//
//  Subject.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@class Observer;

@protocol Subject <NSObject>
@required
- (void)subjectProcessCompleted;
@end

@interface Subject : NSObject
{
	id <Subject> _delegate;
	NSString *message;
	BOOL changed;
}
@property (nonatomic, strong) id delegate;
@property (nonatomic, strong) NSString *message;
@property (nonatomic)  BOOL changed;
- (void)startSubjectProcess;

- (void)registerObserver:(Observer *)observer;
- (void)unregisterObserver:(Observer *)observer;
- (void)notifyObservers;
- (id)getUpdate:(Observer *)observer;
- (void)postMessage:(NSString *)msg;

@end
