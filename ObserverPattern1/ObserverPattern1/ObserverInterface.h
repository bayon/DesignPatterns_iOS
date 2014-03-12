//
//  ObserverInterface.h
//  ObserverPattern1
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObserverInterface : NSObject
{
	NSString *name;
}

@property (nonatomic, retain) NSString *name;

- (void)update:(NSString *)message;
@end
