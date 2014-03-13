//
//  SimplePizzaFactory.m
//  FactoryX
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "PizzaFactory.h"

@interface Guffaws : PizzaFactory {}
- (void)laugh;
@end

@interface Giggles : PizzaFactory {}
- (void)laugh;
@end

@interface Snicker : PizzaFactory {}
- (void)laugh;
@end

@implementation PizzaFactory




-(Pizza *)createPizza:(NSUInteger)laughterType {
    id instanceReturn = nil;
    
	if (laughterType == kLaughWithGuffaw)
		instanceReturn = [[Guffaws alloc]init];
	else if (laughterType == kLaughWithGiggle)
		instanceReturn = [[Giggles alloc]init];
    else if (laughterType == kLaughWithSnicker)
		instanceReturn = [[Snicker alloc]init];
	else
		; // deal with this
	return instanceReturn;
}


- (void)laugh {
	NSLog(@"Humbug");
}

@end


@implementation Guffaws
- (void)laugh {
	NSLog(@"OH HA HA HOWAH HA HA HA");
}

@end

@implementation Giggles
- (void)laugh {
	NSLog(@"Tee hee");
}
@end

@implementation Snicker
- (void)laugh {
	NSLog(@"ttttttssssssssss");
}

@end