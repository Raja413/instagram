//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import "InstagramComment.h"
#import "InstagramUser.h"

@implementation InstagramComment

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super initWithInfo:info];
    if (self && IKNotNull(info)) {
        _user = [[InstagramUser alloc] initWithInfo:info[kCreator]];
        _text = [[NSString alloc] initWithString:info[kText]];
        _createdDate = [[NSDate alloc] initWithTimeIntervalSince1970:[info[kCreatedDate] doubleValue]];
    }
    return self;
}


@end
