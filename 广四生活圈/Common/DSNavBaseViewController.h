//
//  DSNavBaseViewController.h
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DSBaseViewController.h"

@interface DSNavBaseViewController : DSBaseViewController
{

}
/**
 *  自定义的导航视图
 */
@property(nonatomic,strong) UIView *navView;

@property(nonatomic,strong) UIButton *leftButton;

@property(nonatomic,strong) UILabel *titleLabel;

@property(nonatomic,strong) UIButton *rightButton;

/**
 *  返回按钮方法
 */
- (void)backMethod;

/**
 *  右边按钮登录的方法
 */

- (void)loginMethod;
@end
