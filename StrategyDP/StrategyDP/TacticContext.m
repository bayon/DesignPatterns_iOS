//
//  TacticContext.m
//  StrategyDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "TacticContext.h"

@implementation TacticContext
@synthesize strategy;

-(void) selectTacticForTeam:(NSString *)team{
    [strategy adhereTacticToTeam:team ];
}
-(FootballStrategy *) getStrategy{
    return strategy;
}
-(void)setStrategy:(FootballStrategy *)strgy{
    strategy = strgy;
}

@end
