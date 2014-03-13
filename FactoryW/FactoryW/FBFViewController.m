//
//  FBFViewController.m
//  FactoryW
//
//  Created by Bayon Forte on 3/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
#import "Pizza.h"
#import "Factory.h"
#import "Store.h"
#import "Constants.h"

@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*
     FACTORY:
     - Define an interface for creating a single object, but let subclasses decide which class to instantiate.
     Factory Method lets a class defer instantiation to a subclass.(Dependency Injection)
     */
    
    Factory *factory = [[Factory alloc]init];
    Store *store = [[Store alloc]initWithFactory:factory];
    Pizza *myPizza = [[Pizza alloc]init];
    NSLog(@"start with pizza:%@",myPizza.name);
    
    myPizza = [store orderPizza:@"funk"];
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
