//
//  DSBaseViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSBaseViewController.h"
#import "UIView+Toast.h"

@interface DSBaseViewController ()

@end

@implementation DSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:rand()%255/255.0 green:rand()%255/255.0 blue:rand()%255/255.0 alpha:1.0];
    
    
}

- (void)showLoadingView{
    
    
}

- (void)hidenLoadingView{

}

- (void)showErrorMessage:(NSString *)message{
    [self.view makeToast:message];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
