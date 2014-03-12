//
//  SeasonContext.h
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Season.h"
@class Season;

@interface SeasonContext : NSObject
{
    Season *season;
}
@property (nonatomic, retain) Season *season;
-(void) whatIsTheSeason;

@end
