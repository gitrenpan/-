//
//  DSFactory.h
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DSFactory : NSObject

+ (UIButton *)dsbuttonwithType:(DSButtonType)type
                        WithFrame:(CGRect)rect
                      withTitle:(NSString *)title
                        withTag:(NSInteger)tag;


+ (UIButton *)dsbuttonwithType:(DSButtonType)type
                     WithFrame:(CGRect)rect
                     withTitle:(NSString *)title
                       withTag:(NSInteger)tag
                     withTaget:(id)target
                       withSEL:(SEL)sel;


@end
