//
//  AppDelegate.m
//  PurchaseProject
//
//  Created by 王云 on 2018/3/14.
//  Copyright © 2018年 王云. All rights reserved.
//

#import "AppDelegate.h"
#import "JCTabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    JCTabBarViewController *tabVC = [[JCTabBarViewController alloc]init];
    self.window.rootViewController = tabVC;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
   
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
   
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {

}


@end
