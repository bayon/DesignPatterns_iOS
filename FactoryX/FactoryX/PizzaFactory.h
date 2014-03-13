//
//  SimplePizzaFactory.h
//  FactoryX
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"


#define kLaughWithGuffaw  1
#define kLaughWithGiggle  2
#define kLaughWithSnicker  3

@interface PizzaFactory : NSObject

//- (PizzaFactory *) initWithLaughter:(NSUInteger) laughterType;

- (void) laugh;
-(Pizza *)createPizza:(NSUInteger)laughterType;
@end
