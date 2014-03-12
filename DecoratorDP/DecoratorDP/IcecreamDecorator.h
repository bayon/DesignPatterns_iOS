//
//  IcecreamDecorator.h
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Icecream.h"

// should be an abstract class ?
@interface IcecreamDecorator : Icecream
{
    Icecream *specialIcecream;
}
@property (nonatomic, retain) Icecream *specialIcecream;
@end
