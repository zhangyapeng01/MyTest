//
//  LoadingView.h
//  Test
//
//  Created by zhangyapeng on 16/7/7.
//  Copyright © 2016年 zhangyapeng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TestTModel.h"
@interface LoadingView : UIView
{
    TestTModel* timer;
    CGFloat startA;
    CGFloat endA;
    
    
}
- (void)startLoading;
- (void)cancelLoading;


@end
