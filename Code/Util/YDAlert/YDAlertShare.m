//
//  YDAlertShare.m
//  YDClient
//
//  Created by maoziyue on 2017/11/7.
//  Copyright © 2017年 YD. All rights reserved.
//

#import "YDAlertShare.h"

@implementation YDAlertShare


+ (instancetype)alertWithController:(UIViewController *)vc title:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel sure:(NSString *)sure block:(selectedIndex)block
{
    return [[self alloc]initWithController:vc title:title message:message cancel:cancel sure:sure block:block];
}



- (instancetype)initWithController:(UIViewController *)vc title:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel sure:(NSString *)sure block:(selectedIndex)block
{
    if (self = [super init])
    {
        UIAlertController *ctrol = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        
        if (cancel){//取消按钮
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancel style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (block) {
                    block(0);
                }
            }];
            [ctrol addAction:cancelAction];
        }
        
        if (sure){//确定按钮
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:sure style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (block) {
                    block(1);
                }
            }];
            [ctrol addAction:okAction];
        }
        
        [vc presentViewController:ctrol animated:YES completion:nil];
    }
    return self;
    
}














@end
