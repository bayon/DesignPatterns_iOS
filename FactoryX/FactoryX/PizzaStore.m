//
//  PizzaFactory.m
//  FactoryX
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "PizzaStore.h"

@implementation PizzaStore
@synthesize factory = _factory;
- (id)initWithFactory:(PizzaFactory *)pizzaFactory
{
    self = [super init];
    if (self) {
        self.factory = pizzaFactory;
    }
    return self;
}
-(Pizza *)orderPizzaOfIntType:(NSUInteger)pizzaType{
    
    Pizza *pizza = [factory createPizza:1];
    
    return pizza;
    
}
@end
