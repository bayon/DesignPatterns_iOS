//
//  FBFViewController.m
//  DecoratorDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"

#import "Icecream.h"
#import "SimpleIcecream.h"
#import "NuttyDecorator.h"
#import "HoneyDecorator.h"

@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
     
     Icecream is an interface that declares a method makeIceCream that returns a string.
     SimpleIcecream implements Icecream and overrides uses the makeIcecream method to retuen a string describing itself.
     
     IcecreamDecorator is the "head decorator" that implements Icecream and in addition to implementing Icecream methods, it has a constructor
     that accepts an Icecream object and stores it as a property.
     
     NuttyDecorator extends IcecreamDecorator and overrides its makeIcecream method and adds additional functionality via more custom methods.
     And the HoneyDecorator does the same thing that the NUtyDecorator does.
     
     When the ultimate icecream is created below, it displays the results from inner parenthesis outward.
     */
    
    Icecream *icecream = [[ HoneyDecorator alloc] initWithIcecream: [[NuttyDecorator alloc]initWithIcecream:[[SimpleIcecream alloc]init]]];
    
    
    
    NSLog(@"%@",icecream.makeIcecream);
 }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
