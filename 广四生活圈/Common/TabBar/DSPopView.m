//
//  DSPopView.m
//  广四生活圈
//
//  Created by Apple on 15/8/10.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSPopView.h"
#import "DSClickItemProtocol.h"

@implementation DSPopView

- (id)initWithFrame:(CGRect)frame{
    if ( self = [super initWithFrame:frame]) {
        
        [self initView];
        
    }
    
    return self;

}

- (void)initView{
    
    //2 创建popView
    
    
    
    // _popView.backgroundColor = [UIColor blackColor];
    
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.bounds];
    [self addSubview:bg];
    
    bg.image = [UIImage imageNamed:@"home_topbar"];
    
   
    
    //添加button
    UIButton *shake = [UIButton buttonWithType:UIButtonTypeCustom];
    
    shake.frame = CGRectMake(0, 0, 156.0/640*kUIScreenWidth, kPopViewHeight);
    
    [shake setTitle:@"摇一摇" forState:UIControlStateNormal];
    
    [shake setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];
    
    [shake addTarget:self action:@selector(changeVC:) forControlEvents:UIControlEventTouchUpInside];
    
    shake.tag = 5;
    
    [self addSubview:shake];
    
    UIButton *xmpp = [DSFactory dsbuttonwithType:DSNormalButton WithFrame:CGRectMake(168.0/640*kUIScreenWidth, 0, 150/640.0 * kUIScreenWidth, kPopViewHeight) withTitle:@"练习商家" withTag:6];
    
    [xmpp addTarget:self action:@selector(changeVC:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:xmpp];
    
    UIButton *onlie = [DSFactory dsbuttonwithType:DSNormalButton WithFrame:CGRectMake(355/640.0 * kUIScreenWidth, 0, 93 / 640.0 *kUIScreenWidth, kPopViewHeight) withTitle:@"周边" withTag:7 withTaget:self withSEL:@selector(changeVC:)];
    
    [self addSubview:onlie];

}

- (void)changeVC:(UIButton *)bt{
    

    
    if ([_delegate respondsToSelector:@selector(didClickIndex:)]) {
        [_delegate didClickIndex:bt.tag];
    }
    
}
@end
