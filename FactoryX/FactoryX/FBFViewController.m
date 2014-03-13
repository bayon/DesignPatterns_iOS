//
//  FBFViewController.m
//  FactoryX
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
#import "PizzaStore.h"
#import "PizzaFactory.h"
@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    PizzaFactory *factory = [[PizzaFactory alloc]init];
    PizzaStore *store = [[PizzaStore alloc]initWithFactory:factory];
    [store orderPizzaOfIntType:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

