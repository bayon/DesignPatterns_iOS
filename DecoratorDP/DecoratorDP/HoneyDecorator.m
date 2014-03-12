//
//  HoneyDecorator.m
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "HoneyDecorator.h"

@implementation HoneyDecorator
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
    NSString *changedIcecream = [self addHoney];
    NSString *processedIcecream = [NSString stringWithFormat:@"%@ %@",givenIcecream, changedIcecream];
    return processedIcecream;
}

-(NSString *)addHoney{
    return @" + HONEY";
}
@end
