//
//  InterfaceProtocolUser.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "InterfaceProtocolUser.h"

@implementation InterfaceProtocolUser


- (void)viewDidLoad
{
    [super viewDidLoad];
    InterfaceProtocol *sampleProtocol = [[InterfaceProtocol alloc]init];
    sampleProtocol.delegate = self;
    //[myLabel setText:@"Processing..."];
    NSLog(@"\nProcessing.....");
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
-(void)processCompleted{
    //[myLabel setText:@"Process Completed"];
    NSLog(@"\nProcessing.....COMPLETED.");
}


@end
