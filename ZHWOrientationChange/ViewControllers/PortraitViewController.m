//
//  PortraitViewController.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 11/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "PortraitViewController.h"
#import "LandscapeViewController.h"
#import "OrientationAllViewController.h"
#import "UIViewController+Orientation.h"
#import "AppDelegate.h"

@interface PortraitViewController ()

@end

@implementation PortraitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"竖屏" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 addTarget:self action:@selector(click1:) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(10, 70, 50, 40);
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"横屏" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 addTarget:self action:@selector(click2:) forControlEvents:UIControlEventTouchUpInside];
    btn2.frame = CGRectMake(70, 70, 50, 40);
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn3 setTitle:@"横竖屏" forState:UIControlStateNormal];
    btn3.backgroundColor = [UIColor orangeColor];
    [btn3 addTarget:self action:@selector(click3:) forControlEvents:UIControlEventTouchUpInside];
    btn3.frame = CGRectMake(130, 70, 50, 40);
    [self.view addSubview:btn3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self interfaceOrientation:UIInterfaceOrientationPortrait];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

//是否支持旋转
- (BOOL)shouldAutorotate {
    return YES;
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

//默认支持的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
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
    
    //[self presentViewController:vc animated:YES completion:nil];
}
- (void)click3:(UIButton*)sender {
    OrientationAllViewController *vc = [[OrientationAllViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
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







