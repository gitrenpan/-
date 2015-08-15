//
//  DSGuideViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSGuideViewController.h"

@interface DSGuideViewController ()

@end

@implementation DSGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //定义一个ScrollView
    
    UIScrollView *scrollview = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    scrollview.contentSize = CGSizeMake(3 * kUIScreenWidth, kUIScreenHeight);
    
    scrollview.showsHorizontalScrollIndicator = NO;
    
    scrollview.showsVerticalScrollIndicator = NO;
    
    scrollview.pagingEnabled = YES;
    
    [self.view addSubview:scrollview];
    
    //然后实现每个UIImageView 根据他的Frame添加到ScrollView
    
    for (int i = 0; i < 3; i++) {
        UIImageView *img =[[UIImageView alloc]initWithFrame:CGRectMake(i*kUIScreenWidth, 0, kUIScreenWidth, kUIScreenHeight)];
        NSString *str = [NSString stringWithFormat:@"guide_%d",i];
        img.image = [UIImage imageNamed:str];
        
        [scrollview addSubview:img];
        
        if (i == 2) {
            img.userInteractionEnabled = YES;
            
            //定义手势
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(enter)];
            //添加手势到视图
            [img addGestureRecognizer:tap];
        }
        
    }
    
}


- (void)enter{
    
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
