//
//  RKGAppDelegate.m
//  RKGist
//
//  Created by Blake Watters on 2/11/13.
//  Copyright (c) 2013 RestKit. All rights reserved.
//

#import <RestKit/RestKit.h>
#import <RestKit/Network/AFNetworking/NSURLSession/RKObjectSessionManager.h>
#import "RKGAppDelegate.h"
#import "RKGMasterViewController.h"

@implementation RKGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    RKGMasterViewController *controller = (RKGMasterViewController *)navigationController.topViewController;
    return YES;
}

@end
