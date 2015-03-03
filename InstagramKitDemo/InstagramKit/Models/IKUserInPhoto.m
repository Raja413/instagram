//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import "IKUserInPhoto.h"
#define IKNotNull(obj) (obj && ![obj isEqual:[NSNull null]])

@implementation IKUserInPhoto

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super init];
    if (self && IKNotNull(info)) {
        
    }
    return self;
}


@end
