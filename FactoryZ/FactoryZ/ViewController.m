//
//  FBFViewController.m
//  FactoryZ
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ViewController.h"
#import "GenericPizza.h"
#import "GenericFactory.h"
#import "PizzaStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 
    /*
     FACTORY:
     - Define an interface for creating a single object, but let subclasses decide which class to instantiate.
     Factory Method lets a class defer instantiation to a subclass.(Dependency Injection)
     */
    
    GenericPizza *myPizza = [[GenericPizza alloc]init];
    NSLog(@"start with pizza:%@",myPizza.name);
    
    GenericFactory *factory = [[GenericFactory alloc]init];
    PizzaStore *store = [[PizzaStore alloc]initWithFactory:factory];
    
    myPizza = [store orderPizza:@"pepporoni"];
    NSLog(@"results:%@",myPizza.name);
    [myPizza bake];
    [myPizza cut];
    [myPizza box];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
