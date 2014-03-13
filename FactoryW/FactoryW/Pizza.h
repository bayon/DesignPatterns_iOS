//
//  Pizza.h
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject
{
	NSString *name;
}
- (id)init;
@property (nonatomic, retain) NSString *name;
//IF these things never change keep them here...
-(void) bake;
-(void) cut;
-(void) box;
@end
