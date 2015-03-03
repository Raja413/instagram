//
//  InstagramPaginationInfo.h
//  InstagramKitDemo
//
//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InstagramPaginationInfo : NSObject

@property (readonly) NSURL* nextURL;
@property (readonly) NSString *nextMaxId;
@property (readonly) Class type;
- (id)initWithInfo:(NSDictionary *)info andObjectType:(Class)type;

@end
