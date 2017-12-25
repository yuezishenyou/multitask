//
//  ViewController.m
//  multitask
//
//  Created by maoziyue on 2017/12/22.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import "ViewController.h"
#import "YDNetWork.h"


@interface ViewController ()
{
    NSString *_str1;
    NSString *_str2;
}
@property (nonatomic, copy) NSString *code1;

@property (nonatomic, copy) NSString *code2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)netWork
{
    NSString *urlStr1 = @"http://api.mglife.me/v2/home/0";
    
    NSString *urlStr2 = @"http://api.mglife.me/v2/home/1";
    
    NSString *urlStr3 = @"http://api.mglife.me/v2/home/2";
    
    NSArray *urlStrings = @[urlStr1, urlStr2, urlStr3];
    
    dispatch_group_t group = dispatch_group_create();
    
    
    
    for(NSString  *urlString in urlStrings)
    {
        dispatch_group_enter(group);
        
        
        [[YDNetWork manager]GET:urlString parameters:nil success:^(id responseBody) {
            NSLog(@"------urlString:%@------",responseBody[@"code"]);
            dispatch_group_leave(group);
        } failure:^(NSError *error) {
            dispatch_group_leave(group);
        }];
        
        
        
        //        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        //
        //        [manager GET:urlString parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        //
        //        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        //            NSLog(@"------urlString:%@------",responseObject[@"code"]);
        //
        //
        //            dispatch_group_leave(group);
        //        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //            dispatch_group_leave(group);
        //        }];
        
        
    }
    
    
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        
        
        NSLog(@"----结束-----");
        //doSomething
    });
}









//模拟
- (void)btnAction
{
    
    NSLog(@"------btnAction-------");
    
    // 全局变量group
    
    dispatch_group_t group =dispatch_group_create();
    
    // 并行队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
    
    
    
    // 进入组（进入组和离开组必须成对出现,否则会造成死锁）
    
    dispatch_group_enter(group);
    
    dispatch_group_async(group, queue, ^{
        
        // 执行异步任务1
        
        [NSThread sleepForTimeInterval:2];
        
        for (int i =0; i < 3; i ++) {
            
            NSLog(@"%d---%@", i, [NSThread currentThread ]);    //子线程
            
        }
        
        _str1 = @"str1";
        
        dispatch_group_leave(group);
        
    });
    
    
    
    
    
    // 进入组
    
    dispatch_group_enter(group);
    
    dispatch_group_async(group, queue, ^{
        
        // 执行异步任务2
        
        [NSThread sleepForTimeInterval:10];
        
        for (int i =3; i < 6; i ++) {
            
            NSLog(@"%d---%@", i, [NSThread currentThread ]);
            
        }
        
        _str2 =@"str2";
        
        dispatch_group_leave(group);
        
    });
    
    
    
    
    
    dispatch_group_notify(group,dispatch_get_main_queue(), ^{
        
        NSLog(@"%@",_str1);
        
        NSLog(@"%@",_str2);
        
        NSLog(@"%@", [NSThread currentThread]); //主线程
        
        NSLog(@"完成...");
        
    });
    
    
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
