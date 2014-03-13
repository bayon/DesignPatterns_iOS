//
//  GenericFactory.h
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericPizza.h"

@interface GenericFactory : NSObject
- (id)init;
-(GenericPizza *)createPizza:(NSString *)type;
@end
