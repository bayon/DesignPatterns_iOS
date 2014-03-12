//
//  Summer.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Summer.h"
#import "Fall.h"

@implementation Summer

-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is SUMMER");
    [context setSeason:[[Fall alloc]init]];
}
@end
