//
//  AppDelegate.m
//  ZHWOrientationChange
//
//  Created by zhanghongwei on 11/12/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "AppDelegate.h"
#import "PortraitViewController.h"
#import "LandscapeViewController.h"
#import "OrientationAllViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    PortraitViewController *rootVC_1 = [[PortraitViewController alloc] init];
    UINavigationController *navi_1 = [[UINavigationController alloc] initWithRootViewController:rootVC_1];
    navi_1.tabBarItem.title = @"竖屏";
    navi_1.tabBarItem.tag = 0;

    LandscapeViewController *rootVC_2 = [[LandscapeViewController alloc] init];
    UINavigationController *navi_2 = [[UINavigationController alloc] initWithRootViewController:rootVC_2];
    navi_2.tabBarItem.title = @"横屏";
    navi_2.tabBarItem.tag = 1;

    OrientationAllViewController *rootVC_3 = [[OrientationAllViewController alloc] init];
    UINavigationController *navi_3 = [[UINavigationController alloc] initWithRootViewController:rootVC_3];
    navi_3.tabBarItem.title = @"横竖屏";
    navi_3.tabBarItem.tag = 2;

    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC addChildViewController:navi_1];
    [tabVC addChildViewController:navi_2];
    [tabVC addChildViewController:navi_3];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = tabVC;
    //self.window.rootViewController = navi_1;
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
