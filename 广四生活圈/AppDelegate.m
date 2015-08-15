//
//  AppDelegate.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "DSGuideViewController.h"
#import "DSHomeViewController.h"
#import "DSTabBarViewController.h"
#import "DSToolsViewController.h"
#import "DSNewsViewController.h"
#import "DSCircleViewController.h"
#import "DSShakeViewController.h"
#import "DSAboutViewController.h"
#import "DSOnlineViewController.h"
#import "DSXMPPViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];

    
    ViewController *view  = [[ViewController alloc]init];
    //这个是UIStoryboard获取视图的方法
    UIStoryboard *strory = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //DSHomeViewController *home = [strory instantiateViewControllerWithIdentifier:@"DSHomeViewController"];
    
    view.view.backgroundColor = [UIColor yellowColor];
    
    //改变根视图控制器 为 TabBarContoller
    
  _tab  = [[DSTabBarViewController alloc]init];
    
    //home页面
    DSHomeViewController *home = [strory instantiateViewControllerWithIdentifier:@"DSHomeViewController"];
    
    UINavigationController *homeNav = [[UINavigationController alloc]initWithRootViewController:home];

    //新闻视图
    DSNewsViewController *news = [strory instantiateViewControllerWithIdentifier:@"DSNewsViewController"];
    
    UINavigationController *newsNav = [[UINavigationController alloc]initWithRootViewController:news];
    
    //圈子视图
    DSCircleViewController *circle = [strory instantiateViewControllerWithIdentifier:@"DSCircleViewController"];
    
    UINavigationController *circleNav = [[UINavigationController alloc]initWithRootViewController:circle];
    
    DSToolsViewController *tools = [strory instantiateViewControllerWithIdentifier:@"DSToolsViewController"];
    
    UINavigationController *toolNav = [[UINavigationController alloc]initWithRootViewController:tools];
    
    //摇一摇页面
    DSShakeViewController *shake = [strory instantiateViewControllerWithIdentifier:@"DSShakeViewController"];
    
    UINavigationController *shakeNav = [[UINavigationController alloc]initWithRootViewController:shake];
   
    //联系商家
    DSXMPPViewController *xmpp = [strory instantiateViewControllerWithIdentifier:@"DSXMPPViewController"];
    
    UINavigationController *xmppNav = [[UINavigationController alloc]initWithRootViewController:xmpp];

    //直播
    DSOnlineViewController *online = [strory instantiateViewControllerWithIdentifier:@"DSOnlineViewController"];
    
    UINavigationController *onineNav = [[UINavigationController alloc]initWithRootViewController:online];
    
    //关于我们
    DSAboutViewController *about = [strory instantiateViewControllerWithIdentifier:@"DSAboutViewController"];
    
    UINavigationController *aboutNav = [[UINavigationController alloc]initWithRootViewController:about];
    
    
    _tab.viewControllers = @[homeNav,newsNav,circleNav,toolNav,shakeNav,xmppNav,onineNav,aboutNav];
    
    
    self.window.rootViewController = _tab;
    //[[DSGuideViewController alloc]init];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
