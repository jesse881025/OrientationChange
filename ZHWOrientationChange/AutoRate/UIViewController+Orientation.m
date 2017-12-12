//
//  UIViewController+Orientation.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 12/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "UIViewController+Orientation.h"

@implementation UIViewController (Orientation)


- (void)interfaceOrientation:(UIInterfaceOrientation)orientation {
    if ([UIApplication sharedApplication].statusBarOrientation == orientation)
        return;
#if 1
    [self interfaceOrientation1:orientation];
#else
    [self interfaceOrientation2:orientation];
#endif
    
}

//方法一
- (void)interfaceOrientation1:(UIInterfaceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val = orientation;//设置旋转的方向
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}

//方法二
- (void)interfaceOrientation2:(UIInterfaceOrientation)orientation {
    //但是注意这个方法必须在general里面设置支持锁旋转的方向，否则就是强行旋转，会导致程序崩溃，而且不会有崩溃日志，很难发现崩溃在哪里，所以使用这个方法的时候一定要注意设置支持的方向。
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    NSNumber *orientationTarget = [NSNumber numberWithInt:orientation];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


@end
