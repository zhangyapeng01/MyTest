//
//  TestTModel.m
//  AFNetworking
//
//  Created by zhangyapeng on 2017/11/29.
//

#import "TestTModel.h"
@interface TestTModel ()
{
    NSTimer* timer;
    __weak id _weak_target;
    SEL _selector;
    id  _userInfo;
}
@end


@implementation TestTModel


-(void)scheduleTimerWithTimerInternal:(NSTimeInterval)interval
                               target:(id)target
                             selector:(SEL)aSelector
                             userInfo:(id)userInfo
                              repeats:(BOOL)repeats{
    __weak id weak_self = self;
    
    _weak_target = target;
    _selector = aSelector;
    _userInfo = userInfo;
    
   timer = [NSTimer scheduledTimerWithTimeInterval:interval repeats:repeats block:^(NSTimer * _Nonnull timer) {
        [weak_self doTimer];
       
    }];
}
-(void)doTimer
{
    if ([_weak_target respondsToSelector:_selector]) {
        [_weak_target performSelector:_selector];
    }else{
        // 务必在当前线程调用invalidate方法,使得Runloop释放对timer的强引用
        [timer invalidate];
        timer = nil;
    }
}



- (void)dealloc
{
    NSLog(@"TestTModel %@",timer);
}
@end
