//
//  InterfaceProtocol.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/11/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InterfaceProtocolDelegate <NSObject>
@required
- (void)processCompleted;
@end

@interface InterfaceProtocol : NSObject
{
	id <InterfaceProtocolDelegate> _delegate;
}
@property (nonatomic, strong) id delegate;

- (void)startSampleProcess; // Instance method

@end
