//
//  Pizza.m
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Pizza.h"
#import "Constants.h"
@implementation Pizza
@synthesize name = _name;
- (id)init
{
    self = [super init];
    if (self) {
        _name = kPizzaCheese;
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
