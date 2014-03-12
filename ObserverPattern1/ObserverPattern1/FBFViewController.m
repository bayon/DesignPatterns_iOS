//
//  FBFViewController.m
//  ObserverPattern1
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"


#import "Subject.h"
#import "Observer.h"
#import "ObserverX.h"


@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Subject *sub = [[Subject alloc]init];
    Observer *obs = [[Observer alloc]init];
    ObserverX *obsX = [[ObserverX alloc]init];
    
    [sub attach:obs];
    [sub attach:obsX];
    
    [sub postMessage:@"foo"];
    [sub postMessage:@"gone"];
    // DUPLICATE ARE PREVENTED: [sub attach:obsX];
    // Works[sub remove:obsX];
    [sub postMessage:@"wild"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
