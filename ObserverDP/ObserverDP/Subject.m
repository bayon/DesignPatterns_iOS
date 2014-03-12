//
//  Subject.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Subject.h"

@implementation Subject
@synthesize message, changed;

- (void)startSubjectProcess {
	[NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
	                               selector:@selector(subjectProcessCompleted) userInfo:nil repeats:NO];
}

- (void)registerObserver:(Observer *)observer {
}

- (void)unregisterObserver:(Observer *)observer {
}

- (void)notifyObservers {
}

- (id)getUpdate:(Observer *)observer {
	return nil;
}

- (void)postMessage:(NSString *)msg {
	NSLog(@"Message posted to topic: %@", msg);
	self.message = msg;
	self.changed = TRUE;
	[self notifyObservers];
}

@end
