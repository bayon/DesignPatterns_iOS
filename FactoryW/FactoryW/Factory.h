//
//  Factory.h
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Factory : NSObject
- (id)init;
-(Pizza *)createPizza:(NSString *)type;
@end
