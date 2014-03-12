//
//  ObserverOfSubjectNumber1.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ObserverOfSubjectNumber1.h"

@implementation ObserverOfSubjectNumber1
@synthesize name = _name, topic = _topic;

//CONSTRUCTOR
-(id) initWithName:(NSString *)nm
{
    self = [super init];
    if(self)
    {
        self.name = nm;
    }
    return self;
}
-(void)update{
    NSString *msg = (NSString *) [topic getUpdate:self];
    if(msg == nil){
        NSLog(@"%@...no new message",name);
    }else{
        NSLog(@"%@...consuming message",name);
    }
    
}
-(void)setSubject:(Subject *)subject{
    self.topic = subject;
}

#pragma mark - Observer delegate methods
-(void)observerProcessCompleted{
    NSLog(@"\n observerInterface .....COMPLETED.");
}

@end
