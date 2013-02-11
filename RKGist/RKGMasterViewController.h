//
//  RKGMasterViewController.h
//  RKGist
//
//  Created by Blake Watters on 2/11/13.
//  Copyright (c) 2013 RestKit. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RKGMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
