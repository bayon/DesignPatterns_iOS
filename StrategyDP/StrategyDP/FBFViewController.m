//
//  FBFViewController.m
//  StrategyDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
#import "AttackTactic.h"
#import "DefenceTactic.h"

@interface FBFViewController ()

@end

@implementation FBFViewController
@synthesize  team1, team2, tacticContext;

- (void)viewDidLoad {
	[super viewDidLoad];

	team1 = @"Barcelona";
	team2 = @"Real Madrid";

	tacticContext = [[TacticContext alloc] init];

	AttackTactic *offense = [[AttackTactic alloc]init];
	[tacticContext setStrategy:offense];
	[tacticContext selectTacticForTeam:(team1)];

	DefenceTactic *defence = [[DefenceTactic alloc]init];
	[tacticContext setStrategy:defence];
	[tacticContext selectTacticForTeam:(team2)];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

@end
