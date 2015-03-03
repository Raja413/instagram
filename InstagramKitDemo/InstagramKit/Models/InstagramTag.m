//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//


#import "InstagramTag.h"
#import "InstagramModel.h"

@implementation InstagramTag

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super init];
    if (self && IKNotNull(info)) {
        _name = [[NSString alloc] initWithString:info[kTagName]];
        _mediaCount = [info[kTagMediaCount] integerValue];
    }
    return self;
}

@end
