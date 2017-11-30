//
//  TestTModel.h
//  AFNetworking
//
//  Created by zhangyapeng on 2017/11/29.
//

#import <Foundation/Foundation.h>

@interface TestTModel : NSObject
@property (nonatomic, strong)NSTimer *aTimer;
-(void)scheduleTimerWithTimerInternal:(NSTimeInterval)interval
                               target:(id)target
                             selector:(SEL)aSelector
                             userInfo:(id)userInfo
                              repeats:(BOOL)repeats;
@end
