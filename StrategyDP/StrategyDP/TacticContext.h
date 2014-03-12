//
//  TacticContext.h
//  StrategyDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FootballStrategy.h"

@class FootballStrategy;

@interface TacticContext : NSObject{
    FootballStrategy *strategy;
}
@property (nonatomic, retain) FootballStrategy *strategy;

-(void) selectTacticForTeam:(NSString *)team;
-(FootballStrategy *) getStrategy;
-(void) setStrategy:(FootballStrategy *)strategy;

@end
