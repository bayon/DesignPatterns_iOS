//
//  GenericPizza.h
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericPizza : NSObject
{
	NSString *name;
}
- (id)init;
@property (nonatomic, retain) NSString *name;

-(void) bake;
-(void) cut;
-(void) box;


@end
