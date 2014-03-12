//
//  NuttyDecorator.m
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "NuttyDecorator.h"

@implementation NuttyDecorator
- (id)initWithIcecream:(Icecream *)icecream
{
    self = [super init];
    if (self) {
        super.specialIcecream = icecream;
    }
    return self;
}

-(NSString *)makeIcecream{
    NSString *givenIcecream = [specialIcecream makeIcecream];
    NSString *changedIcecream = [self addNuts];
    NSString *processedIcecream = [NSString stringWithFormat:@"%@ %@",givenIcecream, changedIcecream];
    return processedIcecream;
}

-(NSString *)addNuts{
    return @" + NUTS";
}

@end
