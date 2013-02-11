//
//  RKGAppDelegate.h
//  RKGist
//
//  Created by Blake Watters on 2/11/13.
//  Copyright (c) 2013 RestKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
