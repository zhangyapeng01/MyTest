//
//  ZWeakTimer.m
//  AFNetworking
//
//  Created by zhangyapeng on 2017/11/30.
//

#import "ZWeakTimer.h"
@interface ZWeakTimer ()
@property (nonatomic, weak)NSTimer *weakTimer;
@property (nonatomic, assign)SEL select;
@property (nonatomic, weak)id target;

@end
@implementation ZWeakTimer


- (void)doTimerWithTarget:(id)target selecter:(SEL)selecter{
    self.select  = selecter;
    __weak id weakTarget = target;
    self.target = weakTarget;
    __weak ZWeakTimer *weakS = self;
    // 这里不管是强引用还是弱引用都没啥关系，因为NSTimer的retainCount 不知道是几
    // 重点是要在合适的时机将timer停掉
    self.weakTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:weakS selector:@selector(doTimer) userInfo:nil repeats:YES];
}

- (void)doTimer{
    if(self.target && self.weakTimer){
        [self.target performSelector:self.select];
    }
    else {
        [self.weakTimer invalidate];
        self.weakTimer = nil;
    }
}

- (void)dealloc
{
    NSLog(@"ZWeakTimer 死了");
}

@end
