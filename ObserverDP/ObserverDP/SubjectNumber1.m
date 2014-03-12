//
//  SubjectNumber1.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "SubjectNumber1.h"

@implementation SubjectNumber1
@synthesize observers, message, changed, MUTEX;





 - (id)init
{
    self = [super init];
    if (self) {
        self.observers = [[NSMutableArray alloc]init];
        
    }
    return self;
}

-(void)postMessage: (NSString *)msg{
    NSLog(@"Message posted to topic: %@",msg);
    self.message = msg;
    self.changed = TRUE;
     [self notifyObservers];
}

#pragma mark - Subject Delegate Methods

-(void)subjectProcessCompleted{
    NSLog(@"\n subjectInterface .....COMPLETED.");
}

- (void)registerObserver:(Observer *)observer{
    if(observer == nil){
        NSLog(@"FAIL");
    }
    if(![observers containsObject:observer]){
        [observers addObject:observer];
    }
    
}
- (void)unregisterObserver:(Observer *)observer{
    [observers removeObject:observer];
}
- (void)notifyObservers{
    NSMutableArray *observersLocal = nil;
    @synchronized(MUTEX)
    {
        if(!changed)
        {
            return;
            observersLocal = [[NSMutableArray alloc]initWithArray:self.observers];
            self.changed = FALSE;
        }
        for(Observer *observer in observersLocal){
            [observer update];
        }
    }
    
}
- (id)getUpdate:(Observer *)observer{
    return self.message;
}

@end
