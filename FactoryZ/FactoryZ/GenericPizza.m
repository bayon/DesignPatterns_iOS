//
//  GenericPizza.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "GenericPizza.h"

@implementation GenericPizza
@synthesize name = _name;
- (id)init
{
    self = [super init];
    if (self) {
        _name = @"Generic Cheese Pizza!";
    }
    return self;
}
-(void) bake{
    
    NSLog(@"\n bake : \n" );
}
-(void) cut{
    NSLog(@"\n cut : \n" );
}
-(void) box{
    NSLog(@"\n box : \n" );
}
@end
