//
//  RKGGistManager.h
//  RKGist
//
//  Created by Samuel E. Giddins on 3/13/14.
//  Copyright (c) 2014 RestKit. All rights reserved.
//

#import <RestKit/Network/AFNetworking/NSURLSession/RKObjectSessionManager.h>

@interface RKGGistManager : RKObjectSessionManager

+ (instancetype)sharedManager;

@end
