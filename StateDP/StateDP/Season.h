//
//  Season.h
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SeasonContext.h"
@class SeasonContext;

@interface Season : NSObject
{
    SeasonContext *context;
}
@property (nonatomic, retain) SeasonContext *context;
-(void) theSeason:(SeasonContext *)ctx;
@end
