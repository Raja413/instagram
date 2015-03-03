//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InstagramModel.h"

@class InstagramUser;

@interface InstagramComment : InstagramModel

@property (nonatomic, strong) NSDate *createdDate;
@property (nonatomic, strong) InstagramUser *user;
@property (nonatomic, strong) NSString *text;

@end