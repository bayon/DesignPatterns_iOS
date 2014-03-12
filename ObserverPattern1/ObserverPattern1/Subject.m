//
//  Subject.m
//  ObserverPattern1
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Subject.h"
#import "ObserverInterface.h"

@implementation Subject
@synthesize observers;
- (id)init
{
    self = [super init];
    if (self) {
        observers = [[NSMutableArray alloc]init];
    }
    return self;
}
-(void)attach:(id)sender{
     ObserverInterface *obi = (ObserverInterface*)sender;
    if(![observers containsObject:obi])
    {
    [observers addObject:obi];
     NSLog(@"\n ATTACHING observer named: %@",obi.name);
    }else{
        NSLog(@"ALREADY AN OBSERVER");
    }
}
-(void)remove:(id)sender{
    ObserverInterface *obi = (ObserverInterface*)sender;
    [observers removeObject:obi];
}
-(void)postMessage:(NSString *)message{
     for(ObserverInterface * obi in observers){
         [obi update:message];
    }
}

@end

 