//
//  UITabBarController+AutoRate.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 11/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "UITabBarController+AutoRate.h"
#import "UIViewController+Orientation.h"


@implementation UITabBarController (AutoRate)

//是否支持旋转
- (BOOL)shouldAutorotate {
    return [self.selectedViewController shouldAutorotate];
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}

//默认支持的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}


#pragma mark - UITabBarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if (item.tag == 0) {
        self.selectedIndex = 0;
        [self interfaceOrientation:UIInterfaceOrientationPortrait];
    } else if (item.tag == 1) {
        self.selectedIndex = 1;
        [self interfaceOrientation:UIInterfaceOrientationLandscapeRight];
    } else {
        self.selectedIndex = 2;
    }
}




@end

