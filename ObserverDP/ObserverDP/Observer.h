//
//  Observer.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@class Subject;

@protocol Observer <NSObject>
@required
- (void)observerProcessCompleted;
@end

@interface Observer : NSObject
{
	id <Observer> _delegate;
}
@property (nonatomic, strong) id delegate;

- (void)startObserverProcess;
-(void)update;
-(void) setSubject:(Subject *)subject;

@end
