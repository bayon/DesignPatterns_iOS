//
//  PepporoniFactory.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "PepporoniFactory.h"

@implementation PepporoniFactory
- (id)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

-(GenericPizza *) createPepporoniPizza{
    PepporoniPizza * pp = [[PepporoniPizza alloc]init];
    
    return pp;
}

-(GenericPizza *) createPizza{
    GenericPizza * pp = [[PepporoniPizza alloc]init];
    
    return pp;
}

@end
