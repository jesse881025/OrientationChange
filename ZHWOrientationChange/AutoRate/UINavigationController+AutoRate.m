//
//  UINavigationController+AutoRate.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 11/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "UINavigationController+AutoRate.h"

@implementation UINavigationController (AutoRate)


- (BOOL)shouldAutorotate {
    //return [[self.viewControllers lastObject] shouldAutorotate];
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    //return [[self.viewControllers lastObject] supportedInterfaceOrientations];
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

@end
