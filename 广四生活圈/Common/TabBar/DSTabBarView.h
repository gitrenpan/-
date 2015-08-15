//
//  DSTabBarView.h
//  广四生活圈
//
//  Created by Apple on 15/8/10.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DSClickItemProtocol;

@interface DSTabBarView : UIView
{

}

@property(nonatomic,weak) id<DSClickItemProtocol>  delegate;
@end
