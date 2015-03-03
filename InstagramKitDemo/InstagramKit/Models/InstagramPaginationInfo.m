//
//  InstagramPaginationInfo.m
//  InstagramKitDemo
//
//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import "InstagramPaginationInfo.h"
#import "InstagramModel.h"

@interface InstagramPaginationInfo ()
@property (nonatomic, strong) Class type;
@end

@implementation InstagramPaginationInfo

- (id)initWithInfo:(NSDictionary *)info andObjectType:(Class)type
{
    self = [super init];
    BOOL infoExists = IKNotNull(info) && IKNotNull(info[kNextURL]);
    if (self && infoExists){
        
        _nextURL = [[NSURL alloc] initWithString:info[kNextURL]];
        BOOL nextMaxIdExists = IKNotNull(info[kNextMaxId]);
        BOOL nextMaxLikeIdExists = IKNotNull(info[kNextMaxLikeId]);
        if (nextMaxIdExists)
        {
            _nextMaxId = [[NSString alloc] initWithString:info[kNextMaxId]];
        }
        else if (nextMaxLikeIdExists)
        {
            _nextMaxId = [[NSString alloc] initWithString:info[kNextMaxLikeId]];
        }
        
        if (type) {
            self.type = type;
        }
        return self;
    }
    return nil;
}

@end
