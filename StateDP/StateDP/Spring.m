//
//  Spring.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Spring.h"
#import "Summer.h"
@class Summer;

@implementation Spring

-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is Spring");
    [context setSeason:[[Summer alloc]init]];
}

@end
