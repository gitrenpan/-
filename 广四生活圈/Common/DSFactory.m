//
//  DSFactory.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSFactory.h"




@implementation DSFactory
+ (UIButton *)dsbuttonwithType:(DSButtonType)type
                     WithFrame:(CGRect)rect
                     withTitle:(NSString *)title
                       withTag:(NSInteger)tag{
    
    UIButton *item = [UIButton buttonWithType:UIButtonTypeCustom];
    
    item.frame = rect;
    
    [item setTitle:title forState:UIControlStateNormal];
    
    item.tag = tag;
    
    if (type == DSNormalButton) {
        
    }else if (type == DSCornerButton){
        item.layer.cornerRadius = 5;
    }else if (type == 2){
        item.backgroundColor = [UIColor whiteColor];
    }
    
    return item;
}

+ (UIButton *)dsbuttonwithType:(DSButtonType)type WithFrame:(CGRect)rect withTitle:(NSString *)title withTag:(NSInteger)tag withTaget:(id)target withSEL:(SEL)sel{
    
   UIButton *item = [DSFactory dsbuttonwithType:type WithFrame:rect withTitle:title withTag:tag];
    
    [item addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return item;
}
@end
