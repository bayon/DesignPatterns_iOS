//
//  NuttyDecorator.h
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IcecreamDecorator.h"
#import "Icecream.h"

@interface NuttyDecorator : IcecreamDecorator
- (id)initWithIcecream:(Icecream *)icecream;
@end
