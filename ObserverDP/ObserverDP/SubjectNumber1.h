//
//  SubjectNumber1.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface SubjectNumber1 : NSObject <Subject>
{
    NSMutableArray *observers;
    NSString *message;
    BOOL changed;
    NSObject *MUTEX;
}
@property (nonatomic, retain) NSMutableArray *observers;
@property (nonatomic, retain) NSString *message;
@property (nonatomic) BOOL changed;
@property (nonatomic, retain) NSObject *MUTEX;

-(void)postMessage: (NSString *)msg;
@end
