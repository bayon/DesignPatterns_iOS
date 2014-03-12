//
//  ObserverOfSubjectNumber1.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "Subject.h"

@interface ObserverOfSubjectNumber1 : NSObject  <Observer>
{
    NSString *name;
    Subject *topic;
}
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) Subject *topic;
-(id) initWithName:(NSString *)nm;
-(void)update;
@end
