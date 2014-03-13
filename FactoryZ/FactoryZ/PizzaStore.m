//
//  PizzaStore.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "PizzaStore.h"

@implementation PizzaStore
@synthesize factory, pizza;

- (id)initWithFactory:(GenericFactory *)factoryRequested
{
    self = [super init];
    if (self) {
        self.factory = factoryRequested;
    }
    return self;
}

-(GenericPizza *) orderPizza:(NSString *)type{
    GenericPizza *pizzaOrdered;
    
    pizzaOrdered = [self.factory createPizza:type];
    
    
    
    
    
    return pizzaOrdered;
}


@end
