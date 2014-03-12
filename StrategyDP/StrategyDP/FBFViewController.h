//
//  FBFViewController.h
//  StrategyDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TacticContext.h"
#import "FootballStrategy.h"

@interface FBFViewController : UIViewController
{
    NSString *team1;
    NSString *team2;
    TacticContext *tacticContext;
}
@property (nonatomic,retain) NSString *team1;
@property (nonatomic,retain) NSString *team2;
@property (nonatomic,retain) TacticContext *tacticContext;

@end
