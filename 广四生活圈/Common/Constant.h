//
//  Constant.h
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#ifndef ______Constant_h
#define ______Constant_h

#ifdef DEBUG

#define DSLog(...) NSLog(__VA_ARGS__)

#else

#define DSLog(...)

#endif


#define kUIScreenWidth [UIScreen mainScreen].bounds.size.width
#define kUIScreenHeight [UIScreen mainScreen].bounds.size.height

#define kUINavHeight 64
#define kTabBarHeight 49
#define kPopViewHeight 44


/******************枚举**************************/
typedef enum {
    DSNormalButton = 1000000,
    DSCornerButton ,
}DSButtonType;

#endif
