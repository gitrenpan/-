//
//  DSTabBarViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSTabBarViewController.h"
#import "DSTabBarView.h"
#import "DSPopView.h"
#import "DSClickItemProtocol.h"



@interface DSTabBarViewController ()<DSClickItemProtocol>
{

}

@property(nonatomic,strong) DSTabBarView *tabBarView;

@property(nonatomic,strong) DSPopView *popView;

@end

@implementation DSTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //1 创建我们的底部Tabbar
    
    
    //移除系统的TabBar
    [self.tabBar removeFromSuperview];
    
    _tabBarView = [[DSTabBarView alloc]initWithFrame:CGRectMake(0, kUIScreenHeight - kTabBarHeight, kUIScreenWidth, kTabBarHeight)];
    
    //一定要设置代理实现
    _tabBarView.delegate = self;
    
    _tabBarView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:_tabBarView];
    
    
    _popView = [[DSPopView alloc]initWithFrame:CGRectMake(0, kUIScreenHeight - kTabBarHeight - kPopViewHeight, kUIScreenWidth, kPopViewHeight)];
    
    _popView.hidden = YES;
    
    [self.view addSubview:_popView];
}


#pragma mark -- 隐藏我的tabar
- (void)pushHidden:(BOOL)flag{
    
    //yes是隐藏的时候
    if (flag) {
        _popView.hidden = YES;
        _tabBarView.hidden = YES;
        
       
    }else{
        _tabBarView.hidden = NO;
    }
    
}

#pragma mark -- 按钮点击代理方法

- (void)didClickIndex:(NSInteger)index{
    
    _popView.hidden = YES;
    
  
    
    //处理第五个按钮 处理popView
    if (index < 4) {
        self.selectedIndex = index;
    }else if (index == 4) {
        //改变显示值
        _popView.hidden = NO;
    }else if (index > 4){
        self.selectedIndex = index - 1;
    }

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
