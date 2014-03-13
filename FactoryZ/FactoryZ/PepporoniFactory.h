//
//  PepporoniFactory.h
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericFactory.h"
#import "PepporoniPizza.h"
#import "GenericPizza.h"

@interface PepporoniFactory : GenericFactory

-(GenericPizza *) createPepporoniPizza;
-(GenericPizza *) createPizza;
@end
