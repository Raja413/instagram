//
//  Created by Raja Reddy on 3/2/15.
//  Copyright (c) 2015 TIBCO Software Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InstagramKit.h"

@class IKCollectionViewController;
@interface IKLoginViewController : UIViewController <UIWebViewDelegate>
{
    __weak IBOutlet UIWebView *mWebView;
}

@property (nonatomic, assign) IKLoginScope scope;
@property (nonatomic, weak) IKCollectionViewController *collectionViewController;
- (IBAction)back:(id)sender;
@end
