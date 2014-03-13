//
//  PizzaFactory.h
//  FactoryX
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PizzaFactory.h"
#import "Pizza.h"

@interface PizzaStore : NSObject{
    PizzaFactory *factory;
}
- (id)initWithFactory:(PizzaFactory *)factory;
-(Pizza *)orderPizzaOfIntType:(NSUInteger)pizzaType;
@property (nonatomic, retain) PizzaFactory *factory;

@end
