//
//  LibraryAPI.m
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "LibraryAPI.h"
//"facade" specific
#import "PersistencyManager.h"
#import "HTTPClient.h"

//
@interface LibraryAPI () {
    //"facade" specific
    PersistencyManager *persistencyManager;
    HTTPClient *httpClient;
    BOOL isOnline;
}

@end

@implementation LibraryAPI

+ (LibraryAPI*)sharedInstance
{
    // "singleton" specific
    static LibraryAPI *_sharedInstance = nil;
    
    // 2
    static dispatch_once_t oncePredicate;
    
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}
//init to add the "facade" hidden
- (id)init
{
    self = [super init];
    if (self) {
        persistencyManager = [[PersistencyManager alloc] init];
        httpClient = [[HTTPClient alloc] init];
        //The HTTP client doesn’t actually work with a real server and is only here to demonstrate the usage of the facade pattern
        isOnline = NO;
        
        //OBSERVER
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(downloadImage:) name:@"BLDownloadImageNotification" object:nil];
        
    }
    return self;
}


- (NSArray*)getAlbums
{
    return [persistencyManager getAlbums];
}

- (void)addAlbum:(Album*)album atIndex:(int)index
{
    [persistencyManager addAlbum:album atIndex:index];
    if (isOnline)
    {
        [httpClient postRequest:@"/api/addAlbum" body:[album description]];
    }
}

- (void)deleteAlbumAtIndex:(int)index
{
    [persistencyManager deleteAlbumAtIndex:index];
    if (isOnline)
    {
        [httpClient postRequest:@"/api/deleteAlbum" body:[@(index) description]];
    }
}

//OBSERVER ::before you implement downloadImage:
//you must remember to unsubscribe from this notification when your class is deallocated.
//If you do not properly unsubscribe from a notification your class registered for,
//a notification might be sent to a deallocated instance.
//This can result in application crashes.
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//OBSERVER
- (void)downloadImage:(NSNotification*)notification
{
    // 1
    UIImageView *imageView = notification.userInfo[@"imageView"];
    NSString *coverUrl = notification.userInfo[@"coverUrl"];
    
    // 2
    imageView.image = [persistencyManager getImage:[coverUrl lastPathComponent]];
    
    if (imageView.image == nil)
    {
    	// 3
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            UIImage *image = [httpClient downloadImage:coverUrl];
            
            // 4
            dispatch_sync(dispatch_get_main_queue(), ^{
                imageView.image = image;
                [persistencyManager saveImage:image filename:[coverUrl lastPathComponent]];
            });
        });
    }    
}

// ARCHIVING :: MEMENTO
- (void)saveAlbums
{
    [persistencyManager saveAlbums];
}

@end
