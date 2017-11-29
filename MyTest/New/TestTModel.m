//
//  TestTModel.m
//  AFNetworking
//
//  Created by zhangyapeng on 2017/11/29.
//

#import "TestTModel.h"

@implementation TestTModel

- (void)startT:(id)target selecter:(SEL)s{
    self.aTimer = [NSTimer timerWithTimeInterval:0.5 target:target selector:s userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.aTimer forMode:NSRunLoopCommonModes];
    [self.aTimer fire];
}

@end
