//
//  PersistencyManager.h
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"
@interface PersistencyManager : NSObject

- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

// OBSERVER
- (void)saveImage:(UIImage*)image filename:(NSString*)filename;
- (UIImage*)getImage:(NSString*)filename;
//ARCHIVING :: MEMENTO
- (void)saveAlbums;
@end
