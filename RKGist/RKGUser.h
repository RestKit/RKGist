//
//  RKGUser.h
//  RKGist
//
//  Created by Blake Watters on 2/18/13.
//  Copyright (c) 2013 RestKit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class RKGGist;

@interface RKGUser : NSManagedObject

@property (nonatomic, retain) id avatarURL;
@property (nonatomic, retain) NSString * gravatarID;
@property (nonatomic, retain) id jsonURL;
@property (nonatomic, retain) NSString * login;
@property (nonatomic, retain) NSNumber * userID;
@property (nonatomic, retain) NSSet *gists;
@end

@interface RKGUser (CoreDataGeneratedAccessors)

- (void)addGistsObject:(RKGGist *)value;
- (void)removeGistsObject:(RKGGist *)value;
- (void)addGists:(NSSet *)values;
- (void)removeGists:(NSSet *)values;

@end
