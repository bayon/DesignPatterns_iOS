//
//  Fall.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Fall.h"
#import "Winter.h"

@implementation Fall

-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is FALL");
    [context setSeason:[[Winter alloc]init]];
}
@end
