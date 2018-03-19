//
//  JCTabBarViewController.m
//  PurchaseProject
//
//  Created by 王云 on 2018/3/19.
//  Copyright © 2018年 王云. All rights reserved.
//

#import "JCTabBarViewController.h"
#import "JCNavigationController.h"
@interface JCTabBarViewController ()

@end

@implementation JCTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.tintColor = [UIColor blackColor];
    [self addChildViewController];
}

-(void)addChildViewController
{
    NSArray *array = @[
                       @{@"clsName": @"JCHomeViewController", @"title": @"首页"},
                       @{@"clsName": @"JCMineViewController", @"title": @"我的"},];
    
    for (NSDictionary *dict in array)
    {
        //遍历字典,添加子控制器
        UIViewController *vc = [self viewControllerWithDict:dict];
        //通过字典创建对应的控制器
        [self addChildViewController:vc];
    }
    
}


-(UIViewController *)viewControllerWithDict:(NSDictionary *)dict
{
    //初始化控制器
    UIViewController *vc = [NSClassFromString(dict[@"clsName"]) new];
    //设置标题
    vc.title = dict[@"title"];
    //设置不同状态下的图片
    vc.tabBarItem.image = [UIImage imageNamed:@"test"];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:@"test"];
    
    
    //vc.tabBarController.tabBar.tintColor = [UIColor redColor];
    //使用导航控制器包裹这个控制器并且返回
    return [[JCNavigationController alloc] initWithRootViewController:vc];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
