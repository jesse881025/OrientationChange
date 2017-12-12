//
//  LandscapeViewController.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 11/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "LandscapeViewController.h"
#import "PortraitViewController.h"
#import "OrientationAllViewController.h"
#import "AppDelegate.h"
#import "UIViewController+Orientation.h"

@interface LandscapeViewController ()

@end

@implementation LandscapeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"竖屏" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor brownColor];
    [btn1 addTarget:self action:@selector(click1:) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(10, 70, 50, 40);
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"横屏" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor brownColor];
    [btn2 addTarget:self action:@selector(click2:) forControlEvents:UIControlEventTouchUpInside];
    btn2.frame = CGRectMake(70, 70, 50, 40);
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn3 setTitle:@"横竖屏" forState:UIControlStateNormal];
    btn3.backgroundColor = [UIColor brownColor];
    [btn3 addTarget:self action:@selector(click3:) forControlEvents:UIControlEventTouchUpInside];
    btn3.frame = CGRectMake(130, 70, 50, 40);
    [self.view addSubview:btn3];
    
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn4 setTitle:@"旋转" forState:UIControlStateNormal];
    btn4.backgroundColor = [UIColor brownColor];
    [btn4 addTarget:self action:@selector(click4:) forControlEvents:UIControlEventTouchUpInside];
    btn4.frame = CGRectMake(10, 130, 50, 40);
    [self.view addSubview:btn4];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self interfaceOrientation:UIInterfaceOrientationLandscapeRight];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//状态栏是否隐藏
//-(BOOL)prefersStatusBarHidden {
//    return NO;
//}

//是否支持旋转
- (BOOL)shouldAutorotate {
    return YES;
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeRight;
}

//默认支持的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
}


- (void)click1:(UIButton*)sender {
    PortraitViewController *vc = [[PortraitViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)click2:(UIButton*)sender {
    LandscapeViewController *vc = [[LandscapeViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)click3:(UIButton*)sender {
    OrientationAllViewController *vc = [[OrientationAllViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)click4:(UIButton*)sender {
    [self interfaceOrientation:UIInterfaceOrientationLandscapeRight];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
