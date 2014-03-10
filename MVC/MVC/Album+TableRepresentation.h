//
//  Album+TableRepresentation.h
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "Album.h"

@interface Album (TableRepresentation)

- (NSDictionary*)tr_tableRepresentation;

@end
