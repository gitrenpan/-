//
//  DSShopViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/10.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSShopViewController.h"

@interface DSShopViewController ()

@end

@implementation DSShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)backMethod{
    
    //返回
    [self.navigationController popViewControllerAnimated:YES];
    
    //显示tabbar
    UIApplication *app = [UIApplication sharedApplication];
    
    AppDelegate *delegate = app.delegate;
    
    [delegate.tab pushHidden:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
