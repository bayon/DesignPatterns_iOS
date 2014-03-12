//
//  FBFViewController.m
//  FactoryDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
#import "LaughFactory.h"

@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
    Factory
    - Define an interface for creating a single object, but let subclasses decide which class to instantiate.
		Factory Method lets a class defer instantiation to a subclass.(Dependency Injection)
    
    */
    
    LaughFactory *laugh = [[LaughFactory alloc]initWithLaughter:3];
    [laugh laugh];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
