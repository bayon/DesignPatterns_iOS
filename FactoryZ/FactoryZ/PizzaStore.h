//
//  PizzaStore.h
//  FactoryZ
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericFactory.h"
#import "GenericPizza.h"

@interface PizzaStore : NSObject
{
    GenericFactory *factory;
    GenericPizza *pizza;
}
@property (nonatomic,retain) GenericFactory *factory;
@property (nonatomic,retain) GenericPizza *pizza;
- (id)initWithFactory:(GenericFactory *)factoryRequested;
-(GenericPizza *) orderPizza:(NSString *)type;
@end
