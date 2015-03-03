//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class InstagramUser;

@interface IKUserInPhoto : NSObject

@property (nonatomic, readonly) CGPoint positionPercentage;
@property (nonatomic, readonly) InstagramUser *user;


@end
