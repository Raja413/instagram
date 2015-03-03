//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import "InstagramUser.h"
#import "InstagramEngine.h"

@interface InstagramUser()
@property (nonatomic, strong) NSArray *recentMedia;
@end

@implementation InstagramUser

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super initWithInfo:info];
    if (self && IKNotNull(info)) {
        _username = [[NSString alloc] initWithString:info[kUsername]];
        _fullName = [[NSString alloc] initWithString:info[kFullName]];
        _profilePictureURL = [[NSURL alloc] initWithString:info[kProfilePictureURL]];
        if (IKNotNull(info[kBio]))
            _bio = [[NSString alloc] initWithString:info[kBio]];;
        if (IKNotNull(info[kWebsite]))
            _website = [[NSURL alloc] initWithString:info[kWebsite]];

        // DO NOT PERSIST
        if (IKNotNull(info[kCounts]))
        {
            _mediaCount = [(info[kCounts])[kCountMedia] integerValue];
            _followsCount = [(info[kCounts])[kCountFollows] integerValue];
            _followedByCount = [(info[kCounts])[kCountFollowedBy] integerValue];
        }
    }
    return self;
}

- (void)loadUserDetails
{
    [self loadUserDetailsWithSuccess:nil failure:nil];
}

- (void)loadUserDetailsWithSuccess:(void(^)(void))success failure:(void(^)(void))failure
{
    [[InstagramEngine sharedEngine] getUserDetails:self.Id withSuccess:^(InstagramUser *userDetail) {
        _mediaCount = userDetail.mediaCount;
        _followsCount = userDetail.followsCount;
        _followedByCount = userDetail.followedByCount;
        success();
    } failure:^(NSError *error) {
        failure();
    }];
}

- (void)loadRecentMedia:(NSInteger)count
{
    [self loadRecentMedia:count withSuccess:nil failure:nil];
}

- (void)loadRecentMedia:(NSInteger)count withSuccess:(void(^)(void))success failure:(void(^)(void))failure
{
    [[InstagramEngine sharedEngine] getMediaForUser:self.Id withSuccess:^(NSArray *media, InstagramPaginationInfo *paginationInfo) {
        self.recentMedia = media;
        success();
    } failure:^(NSError *error) {
        failure();
    }];
}

@end
