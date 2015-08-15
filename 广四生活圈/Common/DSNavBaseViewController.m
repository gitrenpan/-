//
//  DSNavBaseViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSNavBaseViewController.h"

@interface DSNavBaseViewController ()

@end

#define kNavStatusHeight 20

#define kNavButtonWidth 44
#define kNavButtonHeight 44

@implementation DSNavBaseViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kUIScreenWidth, kUINavHeight)];
    
    _navView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:_navView];
    
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    _leftButton.frame = CGRectMake(0, kNavStatusHeight, kNavButtonWidth,kNavButtonHeight);
    
    [_leftButton setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    
    
    [_leftButton addTarget:self action:@selector(backMethod) forControlEvents:UIControlEventTouchUpInside];
    
    [_navView addSubview:_leftButton];
    
    //CGRectMake(kNavButtonWidth, kNavStatusHeight, kUIScreenWidth - 2*kNavButtonWidth, 44)
    _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    
    _titleLabel.font = [UIFont systemFontOfSize:18];
    
    _titleLabel.textColor = [UIColor whiteColor];
    
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    
    _titleLabel.text = @"电商";
    
    [_navView addSubview:_titleLabel];
    
    
    
    
   // DSLog(@"%@",NSStringFromCGRect(rect));
    
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //_rightButton.frame = CGRectMake(kUIScreenWidth - kNavButtonWidth, kNavStatusHeight, kNavButtonWidth,kNavButtonHeight);
    
   
    
    
    [_rightButton addTarget:self action:@selector(loginMethod) forControlEvents:UIControlEventTouchUpInside];
    
    [_navView addSubview:_rightButton];
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
    
    /**
     *  - (CGRect)boundingRectWithSize:(CGSize)size options:(NSStringDrawingOptions)options attributes:(NSDictionary *)attributes context:(NSStringDrawingContext *)contex
     
     第一个参数 给计算的一个参考宽高
     第二个参数 
     第三个参数 设置一些属性
     */
    CGRect rect = [_titleLabel.text boundingRectWithSize:CGSizeZero options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]} context:nil];
    
    
    _titleLabel.frame = CGRectMake((kUIScreenWidth - rect.size.width)/2,kNavStatusHeight +  (44 - rect.size.height)/2, rect.size.width, rect.size.height);
    
    //登录了
    if (NO) {
        
         [_rightButton setBackgroundImage:[UIImage imageNamed:@"nav_user"] forState:UIControlStateNormal];
        [_rightButton setTitle:@"" forState:UIControlStateNormal];
        
        _rightButton.frame = CGRectMake(kUIScreenWidth - kNavButtonWidth, kNavStatusHeight, kNavButtonWidth,kNavButtonHeight);
        
    }else{
        [_rightButton setBackgroundImage:nil forState:UIControlStateNormal];
        
        [_rightButton setTitle:@"登录/注册" forState:UIControlStateNormal];
        
        _rightButton.titleLabel.font = [UIFont systemFontOfSize:15];
        
        _rightButton.frame = CGRectMake(kUIScreenWidth - 2*kNavButtonWidth, kNavStatusHeight, 2*kNavButtonWidth, kNavButtonHeight);
        
    }
}

- (void)backMethod{

}

- (void)loginMethod{

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
