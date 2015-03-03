//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "InstagramModel.h"

@interface InstagramUser : InstagramModel

@property (readonly) NSString* username;
@property (readonly) NSString* fullName;
@property (readonly) NSURL* profilePictureURL;
@property (readonly) NSString* bio;
@property (readonly) NSURL* website;
// Transient
@property (readonly) NSInteger mediaCount;
@property (readonly) NSInteger followsCount;
@property (readonly) NSInteger followedByCount;

@property (readonly) NSArray *recentMedia;

- (void)loadUserDetails;
- (void)loadUserDetailsWithSuccess:(void(^)(void))success failure:(void(^)(void))failure;

- (void)loadRecentMedia:(NSInteger)count;
- (void)loadRecentMedia:(NSInteger)count withSuccess:(void(^)(void))success failure:(void(^)(void))failure;

@end
