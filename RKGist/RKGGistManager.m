//
//  RKGGistManager.m
//  RKGist
//
//  Created by Samuel E. Giddins on 3/13/14.
//  Copyright (c) 2014 RestKit. All rights reserved.
//

#import "RKGGistManager.h"

@implementation RKGGistManager

+ (instancetype)sharedManager
{
    static RKGGistManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSError *error = nil;
        NSURL *modelURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"RKGist" ofType:@"momd"]];
        // NOTE: Due to an iOS 5 bug, the managed object model returned is immutable.
        NSManagedObjectModel *managedObjectModel = [[[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL] mutableCopy];
        RKManagedObjectStore *managedObjectStore = [[RKManagedObjectStore alloc] initWithManagedObjectModel:managedObjectModel];
        
        // Initialize the Core Data stack
        [managedObjectStore createPersistentStoreCoordinator];
        
        NSPersistentStore __unused *persistentStore = [managedObjectStore addInMemoryPersistentStore:&error];
        NSAssert(persistentStore, @"Failed to add persistent store: %@", error);
        
        [managedObjectStore createManagedObjectContexts];
        
        // Set the default store shared instance
        [RKManagedObjectStore setDefaultStore:managedObjectStore];
        
        // Configure the object manager
        manager = [self managerWithBaseURL:[NSURL URLWithString:@"https://api.github.com"]];
        
        RKEntityMapping *entityMapping = [RKEntityMapping mappingForEntityForName:@"Gist" inManagedObjectStore:managedObjectStore];
        [entityMapping addAttributeMappingsFromDictionary:@{
                                                            @"id":             @"gistID",
                                                            @"url":            @"jsonURL",
                                                            @"description":    @"descriptionText",
                                                            @"public":         @"public",
                                                            @"created_at":     @"createdAt"}];
        entityMapping.identificationAttributes = @[ @"gistID" ];
        
        RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMethods:RKHTTPMethodAny pathTemplateString:@"/gists/public" parameterConstraints:nil keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful) mapping:entityMapping];
        [manager.responseSerializationManager addResponseDescriptor:responseDescriptor];
    });
    return manager;
}

@end
