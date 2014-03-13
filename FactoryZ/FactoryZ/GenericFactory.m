//
//  GenericFactory.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "GenericFactory.h"

@implementation GenericFactory
- (id)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"\n Generic Factory Initialized \n" );
    }
    return self;
}


-(GenericPizza *)createPizza:(NSString *)type{
    
    GenericPizza * gp = [[GenericPizza alloc]init];
     NSLog(@"\n createPizza should return pizza  " );
    
    if([type isEqualToString:@"cheese"]){
        gp.name = @"cheese";
    }
    if([type isEqualToString:@"pepporoni"]){
        gp.name = @"pepporoni";
    }
    return gp;
    
}
@end
