//
//  Store.m
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Store.h"

@implementation Store
@synthesize factory, pizza;

- (id)initWithFactory:(Factory *)factoryRequested
{
    self = [super init];
    if (self) {
        self.factory = factoryRequested;
    }
    return self;
}

-(Pizza *) orderPizza:(NSString *)type{
    Pizza *pizzaOrdered;
    pizzaOrdered = [self.factory createPizza:type];
    return pizzaOrdered;
}

@end
