//
//  ObserverInterface.m
//  ObserverPattern1
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ObserverInterface.h"

@implementation ObserverInterface
@synthesize name;
- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"unnamed";
    }
    return self;
}
-(void)update:(NSString *)message{
    
    NSLog(@"updated %@ with message %@",self.name,message);
}
@end
