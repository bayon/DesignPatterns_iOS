//
//  FBFViewController.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
#import "SeasonContext.h"


@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    /*
     * State - Allow an object to alter it’s behavior when it’s internal state changes. The object will appear to change it’s class.
     */
    
    /*
     * SeasonContext, a class that contains a "Season" class and has a constructor that accepts a "Season" as a parameter. It can "set" the season and
     * describe the season.
     *
     * Season, is an INTERFACE that accepts a context as a parameter.
     *
     * All the various seasons implement the Season constructor, and using its context, sets the next season after declaring itself the season in text.
     */
    
    SeasonContext *seasonContext = [[SeasonContext alloc]init];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
