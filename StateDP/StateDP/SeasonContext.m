//
//  SeasonContext.m
//  StateDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014

//

#import "SeasonContext.h"
#import "Winter.h"

@implementation SeasonContext

@synthesize season = _season;

- (id)init
{
    self = [super init];
    if (self) {
        self.season = [[Winter alloc]init];
    }
    return self;
}
-(void)setSeason:(Season *)seasonToSet{
    _season = seasonToSet;
}

-(void) whatIsTheSeason{
    [_season theSeason:self];
     
    //NSLog(@"The season is your face.");
    
    
}
@end
