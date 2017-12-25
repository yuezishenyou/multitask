//
//  HHMainController.m
//  multitask
//
//  Created by maoziyue on 2017/12/22.
//  Copyright © 2017年 maoziyue. All rights reserved.
//


//iOS开发中利用dispatch group实现并发多任务


#import "HHMainController.h"
#import "YDNetWork.h"
#import "AFNetworking.h"
#import "DejActivityView.h"
#import "YDAlertShare.h"


@interface HHMainController ()
{
    NSString *_str1;
    NSString *_str2;
}
@property (nonatomic, copy) NSString *code1;

@property (nonatomic, copy) NSString *code2;

@end

@implementation HHMainController

- (void)viewDidLoad {
    [super viewDidLoad];
   
 
    self.title = @"多任务";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"请求" style:UIBarButtonItemStyleDone target:self action:@selector(loadData)];
    
    
    [self initSubViews];
    
    
}





//- (void)loadData
//{
//
//    dispatch_group_t group = dispatch_group_create();
//
//
//    [DejActivityView activityViewForView:self.navigationController.view];
//
//    //1
//    dispatch_group_enter(group);
//
//    NSLog(@"------网络请求1-------");
//
//    [YDNetWork GET:@"http://api.mglife.me/v2/home/0" parameters:nil success:^(id responseBody) {
//
//        NSLog(@"-------responseBody1:%@---------",responseBody[@"code"]);
//
//
//        dispatch_group_leave(group);
//        self.code1 = @"1";
//
//    } failure:^(NSError *error) {
//
//
//        dispatch_group_leave(group);
//        self.code1 = @"0";
//    }];
//
//
//
//    //2
//    dispatch_group_enter(group);
//
//    NSLog(@"------网络请求2-------");
//
//    [YDNetWork GET:@"http://api.mglife.me/v2/home/1" parameters:nil success:^(id responseBody) {
//
//        NSLog(@"-------responseBody2:%@---------",responseBody[@"code"]);
//
//
//
//        dispatch_group_leave(group);
//        self.code2 = @"0";
//    } failure:^(NSError *error) {
//
//        dispatch_group_leave(group);
//        self.code2 = @"0";
//    }];
//
//
//
//    //结果
//    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//        [DejActivityView removeView];
//
//       NSLog(@"-----(%@)(%@)------------",self.code1,self.code2);
//
//        if ([self.code2 isEqualToString:@"1"] && [self.code1 isEqualToString:@"1"])
//        {
//            NSLog(@"-----完美----");
//
//        }
//        else
//        {
//            NSLog(@"----结束-----");
//            [YDAlertShare alertWithController:self title:@"提示" message:@"数据加载失败,是否确定重新加载?" cancel:@"取消" sure:@"确定" block:^(NSInteger index) {
//                if (index) {
//                    [self loadData];
//                }
//            }];
//        }
//
//    });
//
//}


- (void)loadData
{
    dispatch_group_t group = dispatch_group_create();
    
    
    [DejActivityView activityViewForView:self.navigationController.view];
    
    [self load1:group];
    
    [self load2:group];
    
    //结果
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        [DejActivityView removeView];
        
        NSLog(@"-----(%@)(%@)------------",self.code1,self.code2);
        
        if ([self.code2 isEqualToString:@"1"] && [self.code1 isEqualToString:@"1"])
        {
            NSLog(@"-----完美----");
            
        }
        else
        {
            NSLog(@"----结束-----");
            [YDAlertShare alertWithController:self title:@"提示" message:@"数据加载失败,是否确定重新加载?" cancel:@"取消" sure:@"确定" block:^(NSInteger index) {
                if (index) {
                    [self loadData];
                }
            }];
        }
        
    });
    
}

- (void)load1:(id)group
{
    //1
    dispatch_group_enter(group);
    
    NSLog(@"------网络请求1-------");
    
    [YDNetWork GET:@"http://api.mglife.me/v2/home/0" parameters:nil success:^(id responseBody) {
        
        NSLog(@"-------responseBody1:%@---------",responseBody[@"code"]);
        
        
        dispatch_group_leave(group);
        self.code1 = @"1";
        
    } failure:^(NSError *error) {
        
        
        dispatch_group_leave(group);
        self.code1 = @"0";
    }];
}


- (void)load2:(id)group
{
    //2
    dispatch_group_enter(group);
    
    NSLog(@"------网络请求2-------");
    
    [YDNetWork GET:@"http://api.mglife.me/v2/home/1" parameters:nil success:^(id responseBody) {
        
        NSLog(@"-------responseBody2:%@---------",responseBody[@"code"]);
        
        
        
        dispatch_group_leave(group);
        self.code2 = @"0";
    } failure:^(NSError *error) {
        
        dispatch_group_leave(group);
        self.code2 = @"0";
    }];
    
}

























- (void)initSubViews
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(20, 100, 100, 40);
    
    btn.backgroundColor = [UIColor redColor];
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn addTarget:self action:@selector(btnActionaaaa) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}


- (void)btnActionaaaa
{
    NSLog(@"======按钮=============");
}








@end
