//
//  Subject.h
//  ObserverPattern1
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject

@property (nonatomic, retain) NSMutableArray *observers;

- (void)postMessage:(NSString *)message;
- (void)attach:(id)sender;
- (void)remove:(id)sender;

@end
