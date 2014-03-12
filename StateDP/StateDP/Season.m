//
//  Season.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Season.h"


@implementation Season
@synthesize context;

- (id)initWith:(SeasonContext *)ctx
{
    self = [super init];
    if (self) {
        self.context = ctx;
    }
    return self;
}

-(void) theSeason:(SeasonContext *)ctx{
    self.context = ctx;
}

@end
