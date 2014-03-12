//
//  ConcreteVC.m
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "ConcreteVC.h"


@interface ConcreteVC ()

@end

@implementation ConcreteVC
@synthesize concreteSubject = _concreteSubject;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    
   
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
     NSLog(@"\n F I L E -> F U N C T I O N : \n %s \n",__FUNCTION__);
    [super viewDidLoad];
    concreteSubject = [[ConcreteSubject alloc]init];
    
    ConcreteObserver *observer1 = [[ConcreteObserver alloc]init];
    ConcreteObserver *observer2 = [[ConcreteObserver alloc]init];
    ConcreteObserver *observer3 = [[ConcreteObserver alloc]init];
    
    [concreteSubject attach:observer1];
    [concreteSubject attach:observer2];
    [concreteSubject attach:observer3];
    
    observer1.concreteSubject = concreteSubject;
    observer2.concreteSubject = concreteSubject;
    observer3.concreteSubject = concreteSubject;
    
    [observer1 update];
    
    //INVOCATION http://stackoverflow.com/questions/313400/nsinvocation-for-dummies
    
    
    
    [concreteSubject notify:@"POST A MESSAGE"];
    [observer1 update];
    [observer2 update];
    [observer3 update];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 }

@end
