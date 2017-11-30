//
//  TimerWeakTarget.m
//  AFNetworking
//
//  Created by zhangyapeng on 2017/11/29.
//

#import "TimerWeakTarget.h"

@implementation TimerWeakTarget
+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      target:(id)aTarget
                                    selector:(SEL)aSelector
                                    userInfo:(id)userInfo
                                     repeats:(BOOL)repeats{
    
    TimerWeakTarget * timer = [TimerWeakTarget new];
    timer.target = aTarget;
    timer.selector = aSelector;
    //-此处的target已经被换掉了不是原来的VIewController而是TimerWeakTarget类的对象timer
    timer.timer = [NSTimer scheduledTimerWithTimeInterval:interval target:timer selector:@selector(fire:) userInfo:userInfo repeats:repeats];
    return timer.timer;
}
-(void)fire:(NSTimer *)timer{
    
    if (self.target) {
        [self.target performSelector:self.selector withObject:timer.userInfo];
    } else {
        // 务必在当前线程调用invalidate方法,使得Runloop释放对timer的强引用
        [self.timer invalidate];
        self.timer = nil;
    }
}
- (void)dealloc
{
    NSLog(@"TimerWeakTarget %@",self.timer);
    NSLog(@"TimerWeakTarget %@",self);
}

@end
