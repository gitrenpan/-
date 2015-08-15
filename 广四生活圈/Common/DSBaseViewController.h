//
//  DSBaseViewController.h
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSBaseViewController : UIViewController
{

}
///**
// *  传递属性
// */
//@property(nonatomic,strong) NSMutableDictionary *para;
///**
// *  数据源数组
// */
//@property(nonatomic,strong) NSMutableArray *array;
//

- (void)showLoadingView;

- (void)hidenLoadingView;

- (void)showErrorMessage:(NSString *)message;

@end
