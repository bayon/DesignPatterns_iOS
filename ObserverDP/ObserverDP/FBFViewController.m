//
//  FBFViewController.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
//#import "SubjectNumber1.h"
//#import "ObserverOfSubjectNumber1.h"



@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad {
	[super viewDidLoad];


	Subject *subjectNumber1 = [[Subject alloc]init];
	subjectNumber1.delegate = self;
	NSLog(@"\n subjectInterface Processing.....");
	[subjectNumber1 startSubjectProcess];

	Observer *observerNumber1 = [[Observer alloc]init];
	observerNumber1.delegate = self;
	Observer *observerNumber2 = [[Observer alloc]init];
	observerNumber2.delegate = self;
	Observer *observerNumber3 = [[Observer alloc]init];
	observerNumber3.delegate = self;

	//NSLog(@"\n observerInterface Processing.....");
	//[observerNumber1 startObserverProcess];


	[subjectNumber1 registerObserver:observerNumber1];
	[subjectNumber1 registerObserver:observerNumber2];
	[subjectNumber1 registerObserver:observerNumber3];

	[observerNumber1 update];

	[subjectNumber1 postMessage:@"fooey is the message"];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

/**/
#pragma mark - Sample protocol delegate
- (void)observerProcessCompleted {
	NSLog(@"\n observerInterface .....COMPLETED.");
}

- (void)subjectProcessCompleted {
	NSLog(@"\n subjectInterface .....COMPLETED.");
}

@end
