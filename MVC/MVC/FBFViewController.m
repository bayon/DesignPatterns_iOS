//
//  FBFViewController.m
//  MVC
//
//  Created by Bayon Forte on 3/10/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "FBFViewController.h"
//DELEGATION
#import "LibraryAPI.h"
#import "Album+TableRepresentation.h"

//ADAPTER
#import "HorizontalScroller.h"
#import "AlbumView.h"


@interface FBFViewController () <UITableViewDataSource, UITableViewDelegate, HorizontalScrollerDelegate>
{
    //DELEGATION
	UITableView *dataTable;
	NSArray *allAlbums;
	NSDictionary *currentAlbumData;
	int currentAlbumIndex;
    //ADAPTER
    HorizontalScroller *scroller;
    /*
     How to Use the Command Pattern
     Before you get into the invocation of actions, you need to set up the framework for undoing actions. So you must define the UIToolBar and the NSMutableArray needed for the undo stack.
     Add the following code to the class extension in ViewController.m where you defined all the other variables:
     */
    UIToolbar *toolbar;
    // We will use this array as a stack to push and pop operation for the undo option
    NSMutableArray *undoStack;
}
@end

@implementation FBFViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSLog(@"\n F I L E -> F U N C T I O N : \n %s \n", __FUNCTION__);
    
    //MEMENTO
     [self loadPreviousState];
    
    
    // DELEGATION----------------------------
    // 1
    self.view.backgroundColor = [UIColor colorWithRed:0.76f green:0.81f blue:0.87f alpha:1];
    currentAlbumIndex = 0;
    
    // <COMMAND>
    toolbar = [[UIToolbar alloc] init];
    UIBarButtonItem *undoItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemUndo target:self action:@selector(undoAction)];
    undoItem.enabled = NO;
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *delete = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:@selector(deleteAlbum)];
    [toolbar setItems:@[undoItem,space,delete]];
    [self.view addSubview:toolbar];
    undoStack = [[NSMutableArray alloc] init];
    // </COMMAND>
    
    
    
    
    
    //2
    allAlbums = [[LibraryAPI sharedInstance] getAlbums];
    
    // 3
    // the uitableview that presents the album data
    dataTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, self.view.frame.size.height-120) style:UITableViewStyleGrouped];
    dataTable.delegate = self;
    dataTable.dataSource = self;
    dataTable.backgroundView = nil;
    [self.view addSubview:dataTable];
    
    //ADAPTER
    scroller = [[HorizontalScroller alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 120)];
    scroller.backgroundColor = [UIColor colorWithRed:0.24f green:0.35f blue:0.49f alpha:1];
    scroller.delegate = self;
    [self.view addSubview:scroller];
    
    [self reloadScroller];
    
    
    //DELEGATION
    [self showDataForAlbumAtIndex:currentAlbumIndex];
    
    //MEMENTO
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveCurrentState) name:UIApplicationDidEnterBackgroundNotification object:nil];
}

//DELEGATION =====
- (void)showDataForAlbumAtIndex:(int)albumIndex
{
    // defensive code: make sure the requested index is lower than the amount of albums
    if (albumIndex < allAlbums.count)
    {
    	// fetch the album
        Album *album = allAlbums[albumIndex];
        // save the albums data to present it later in the tableview
        currentAlbumData = [album tr_tableRepresentation];
    }
    else
    {
        currentAlbumData = nil;
    }
    
    // we have the data we need, let's refresh our tableview
    [dataTable reloadData];
}


#pragma mark - TableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [currentAlbumData[@"titles"] count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = currentAlbumData[@"titles"][indexPath.row];
    cell.detailTextLabel.text = currentAlbumData[@"values"][indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - HorizontalScrollerDelegate methods
- (void)horizontalScroller:(HorizontalScroller *)scroller clickedViewAtIndex:(int)index
{
    currentAlbumIndex = index;
    [self showDataForAlbumAtIndex:index];
}

- (NSInteger)numberOfViewsForHorizontalScroller:(HorizontalScroller*)scroller
{
    return allAlbums.count;
}

- (UIView*)horizontalScroller:(HorizontalScroller*)scroller viewAtIndex:(int)index
{
    Album *album = allAlbums[index];
    return [[AlbumView alloc] initWithFrame:CGRectMake(0, 0, 100, 100) albumCover:album.coverUrl];
}

- (void)reloadScroller
{
    allAlbums = [[LibraryAPI sharedInstance] getAlbums];
    if (currentAlbumIndex < 0) currentAlbumIndex = 0;
    else if (currentAlbumIndex >= allAlbums.count) currentAlbumIndex = allAlbums.count-1;
    [scroller reload];
    
    [self showDataForAlbumAtIndex:currentAlbumIndex];
}

/*
 NEXT UP: The Observer Pattern
 
 1) AlbumView shouldn’t work directly with LibraryAPI. 
    You don’t want to mix view logic with communication logic.
 2)For the same reason, LibraryAPI shouldn’t know about AlbumView.
 3) LibraryAPI needs to inform AlbumView once the covers are downloaded
 since the AlbumView has to display the covers.
 
 
 In the Observer pattern, one object notifies other objects of any state changes. 
 The objects involved don’t need to know about one another 
 – thus encouraging a decoupled design. 
 This pattern’s most often used to notify interested objects when a property has changed.
 The usual implementation requires that an observer registers interest in the state of another object. 
 When the state changes, all the observing objects are notified of the change. 
 Apple’s Push Notification service is a global example of this.
 If you want to stick to the MVC concept (hint: you do), 
 you need to allow Model objects to communicate with View objects, 
 but without direct references between them. 
 And that’s where the Observer pattern comes in.
 */

// MEMENTO DESIGN PATTERN
- (void)saveCurrentState
{
    // When the user leaves the app and then comes back again, he wants it to be in the exact same state
    // he left it. In order to do this we need to save the currently displayed album.
    // Since it's only one piece of information we can use NSUserDefaults.
    [[NSUserDefaults standardUserDefaults] setInteger:currentAlbumIndex forKey:@"currentAlbumIndex"];
    
    //ARCHIVING :: MEMENTO
     [[LibraryAPI sharedInstance] saveAlbums];
}

- (void)loadPreviousState
{
    currentAlbumIndex = [[NSUserDefaults standardUserDefaults] integerForKey:@"currentAlbumIndex"];
    [self showDataForAlbumAtIndex:currentAlbumIndex];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


//
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller *)scroller
{
    return currentAlbumIndex;
}

//  COMMAND
- (void)viewWillLayoutSubviews
{
    toolbar.frame = CGRectMake(0, self.view.frame.size.height-44, self.view.frame.size.width, 44);
    dataTable.frame = CGRectMake(0, 130, self.view.frame.size.width, self.view.frame.size.height - 200);
}
#pragma mark - Command
- (void)addAlbum:(Album*)album atIndex:(int)index
{
    [[LibraryAPI sharedInstance] addAlbum:album atIndex:index];
    currentAlbumIndex = index;
    [self reloadScroller];
}
- (void)deleteAlbum
{
    // 1
    Album *deletedAlbum = allAlbums[currentAlbumIndex];
    
    // 2
    NSMethodSignature *sig = [self methodSignatureForSelector:@selector(addAlbum:atIndex:)];
    NSInvocation *undoAction = [NSInvocation invocationWithMethodSignature:sig];
    [undoAction setTarget:self];
    [undoAction setSelector:@selector(addAlbum:atIndex:)];
    [undoAction setArgument:&deletedAlbum atIndex:2];
    [undoAction setArgument:&currentAlbumIndex atIndex:3];
    [undoAction retainArguments];
    
    // 3
    [undoStack addObject:undoAction];
    
    // 4
    [[LibraryAPI sharedInstance] deleteAlbumAtIndex:currentAlbumIndex];
    [self reloadScroller];
    
    // 5
    [toolbar.items[0] setEnabled:YES];
    /*
     
     1) Get the album to delete.
     2) Define an object of type NSMethodSignature to create the NSInvocation, which will be used to reverse the delete action if the user later decides to undo a deletion. The NSInvocation needs to know three things: The selector (what message to send), the target (who to send the message to) and the arguments of the message. In this example the message sent is delete’s opposite since when you undo a deletion, you need to add back the deleted album.
     3) After the undoAction has been created you add it to the undoStack. This action will be added to the end of the array, just as in a normal stack.
     4) Use LibraryAPI to delete the album from the data structure and reload the scroller.
     5) Since there’s an action in the undo stack, you need to enable the undo button.
     Note: With NSInvocation, you need to keep the following points in mind:
     The arguments must be passed by pointer.
     The arguments start at index 2; indices 0 and 1 are reserved for the target and the selector.
     If there’s a chance that the arguments will be deallocated, then you should call retainArguments.
     */
    
}

- (void)undoAction
{
    if (undoStack.count > 0)
    {
        NSInvocation *undoAction = [undoStack lastObject];
        [undoStack removeLastObject];
        [undoAction invoke];
    }
    
    if (undoStack.count == 0)
    {
        [toolbar.items[0] setEnabled:NO];
    }
}


@end
