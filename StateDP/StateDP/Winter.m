//
//  Winter.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Winter.h"
#import "Spring.h"
@class Spring;

@implementation Winter
-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is Winter");
    [context setSeason:[[Spring alloc]init]];
}
@end
