//
//  YDAlertShare.h
//  YDClient
//
//  Created by maoziyue on 2017/11/7.
//  Copyright © 2017年 YD. All rights reserved.
//


//******************* 系统提示弹框 *************************


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//0-取消 1-确定
typedef void(^selectedIndex)(NSInteger index);

@interface YDAlertShare : NSObject


+ (instancetype)alertWithController:(UIViewController *)vc title:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel sure:(NSString *)sure block:(selectedIndex)block;



@end
