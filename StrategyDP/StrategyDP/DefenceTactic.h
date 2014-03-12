//
//  DefenceTactic.h
//  StrategyDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FootballStrategy.h"

@interface DefenceTactic : FootballStrategy
- (void)adhereTacticToTeam:(NSString *)team;
@end
