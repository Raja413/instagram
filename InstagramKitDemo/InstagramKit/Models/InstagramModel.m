//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import "InstagramModel.h"

@implementation InstagramModel

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super init];
    if (self && IKNotNull(info)) {
        _Id = [[NSString alloc] initWithString:info[kID]];
    }
    return self;
}

@end
