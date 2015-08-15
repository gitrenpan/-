//
//  DSHomeViewController.m
//  广四生活圈
//
//  Created by Apple on 15/8/9.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "DSHomeViewController.h"
#import "DSShopViewController.h"
#import "AFHTTPSessionManager.h"
#import "AFHTTPRequestOperationManager.h"
#import "MD5.h"

#define APP_ID  @"1001"
#define APP_IDENGER @"5bV9JhaMn2GJ5MZe"
@interface DSHomeViewController ()

@end

@implementation DSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"生活圈";
    
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:nil]];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    //用于存放参数
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    
    [param setObject:@"120.38" forKey:@"lon"];
    
     [param setObject:@"36.06" forKey:@"lat"];
    
    //时间戳
        //2015-08-10 11:19:00
    NSString *time = [NSString stringWithFormat:@"%f",[[NSDate date]timeIntervalSince1970]];
    
     [param setObject:time forKey:@"time"];
    
    NSString *signStr = [NSString stringWithFormat:@"%@%@%@%@%@",APP_ID,param[@"lon"],param[@"lat"],param[@"time"],APP_IDENGER];
    NSString *trans = [MD5 MD5Encrypt:signStr];
     [param setObject:trans forKey:@"sign"];
    
     [param setObject:APP_ID forKey:@"app_id"];
    
    
   
    
    [manager GET:@"http://www.qd-life.com/?anu=api/1/index/get_index_info" parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
}
- (IBAction)next:(id)sender {
    
    //xib加载ViewControll的方法
    DSShopViewController *shop = [[DSShopViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:shop animated:YES];
    
    // 我让tabbar 隐藏 调用一个方法
    
    // 1 先拿到我的 UIApplication
    
    UIApplication *app = [UIApplication sharedApplication];
    
    //2通过Window拿到我的appdelegate
    AppDelegate *delegate = app.delegate;
    
    [delegate.tab pushHidden:YES];
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
