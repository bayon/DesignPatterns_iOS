//
//  LibraryAPI.h
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 "facade"
 only LibraryAPI should hold instances of PersistencyManager and HTTPClient. Then, LibraryAPI will expose a simple API to access those services.
 */
#import "Album.h"


@interface LibraryAPI : NSObject
+ (LibraryAPI*)sharedInstance;

// "facade" specific
- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;
// ARCHIVING :: MEMENTO
- (void)saveAlbums;
@end
