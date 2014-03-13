//
//  PepporoniPizza.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "PepporoniPizza.h"

@implementation PepporoniPizza
- (id)init
{
    self = [super init];
    if (self) {
        name = @"Pepporoni Paradise";
        //NSLog(@"name:%@",name);
    }
    return self;
}
+ (id)pizzaWithType:(NSString *)type{
    NSString * result = @"pe pa roni";
    
    return result;
}
@end
