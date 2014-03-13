//
//  Factory.m
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Factory.h"
#import "Constants.h"

@implementation Factory
- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"\n Factory Initialized \n" );
    }
    return self;
}

-(Pizza *)createPizza:(NSString *)type{
    Pizza * gp = [[Pizza alloc]init];
   
    if([type isEqualToString:kPizzaCheese]){
        gp.name = kPizzaCheese;
    }
    if([type isEqualToString:kPizzaPepperoni]){
        gp.name = kPizzaPepperoni;
    }
    if([type isEqualToString:kPizzaVeggie]){
        gp.name = kPizzaVeggie;
    }else{
        NSLog(@"\n OOPS!, we don't have that kind of pizza.");
    }
    
    return gp;
}
@end
