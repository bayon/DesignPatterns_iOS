//
//  ConcreteSubject.h
//  ObserverDP
//
//  Created by Bayon Forte on 3/12/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObservableSubject.h"


@interface ConcreteSubject : ObservableSubject{
    BOOL updated;
}
@property (nonatomic) BOOL updated;
-(BOOL)getState;
@end
