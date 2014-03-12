//
//  IcecreamDecorator.m
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "IcecreamDecorator.h"

@implementation IcecreamDecorator
@synthesize specialIcecream;
- (id)initWithIcecream:(Icecream *)icecream
{
    self = [super init];
    if (self) {
        self.specialIcecream =icecream;
    }
    return self;
}
-(NSString *)makeIcecream{
    return [specialIcecream makeIcecream];
}
@end
