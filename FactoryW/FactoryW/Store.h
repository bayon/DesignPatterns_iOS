//
//  Store.h
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Factory.h"

@interface Store : NSObject
{
    Factory *factory;
    Pizza *pizza;
}
@property (nonatomic,retain) Factory *factory;
@property (nonatomic,retain) Pizza *pizza;
- (id)initWithFactory:(Factory *)factoryRequested;
-(Pizza *) orderPizza:(NSString *)type;
@end

 
