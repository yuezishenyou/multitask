//
//  YDNetworking.h
//  HH_Entity
//
//  Created by maoziyue on 17/6/2.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


//#import "YDPersonInfoModel.h"
//#import "YDMytripModel.h"
//#import "YDMyIncomeModel.h"
//#import "YDPersonEndTripModel.h"
//#import "YDByCarGetPassangerModel.h"
//#import "YDByCarModel.h"
//#import "YDConfirmCostModel.h"
//#import "YDUpLoadModel.h"
//#import "YDLoginModel.h"
//#import "YDRegistModel.h"
//#import "YDCityModel.h"
//#import "YDForgetPassModel.h"
//#import "YDForgetCodeModel.h"
//#import "YDRegistCodeModel.h"
//#import "YDCarListModel.h"
//#import "YDRegistCheckModel.h"
//#import "YDSignOutModel.h"
//#import "YDServiceTypeModel.h"
//#import "YDRouteLocModel.h"





@interface YDNetworking : NSObject

///**
// * 5082
// * 实时叫单
// */
//+ (void)postGetSSOrderDataWithDictionary:(NSDictionary *)dict;
//
//
//
///**
// * 2004
// * 登录
// */
//+ (void)postGetLoginDataWithDictionary:(NSDictionary *)dic resultBlock:(void (^)(YDLoginModel *model,NSError *error))block;
//
///**
// * 2002
// * 司机注册
// */
//+ (void)postGetRegistDataWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDRegistModel *model,NSError *error))block;
//
///**
// * 2010
// * 找回密码
// */
//+ (void)postGetForgetPassWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDForgetPassModel *model,NSError *error))block;
//
//
//
//
///**
// * 1022
// * 注册验证码
// */
//+ (void)postGetRegistCodeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDRegistCodeModel *model,NSError *error))block ;
//
//
///**
// * 1013
// * 注册时校验短信验证码
// */
//+ (void)postGetRegistCheckCodeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDRegistCheckModel *model,NSError *error))block;
//
//
///**
// * 1001
// * 找回密码验证码
// */
//+ (void)postGetForgetCodeWithDictionary:(NSDictionary *)dict  resultBlock:(void (^)(YDForgetCodeModel *model,NSError *error))block;
//
//
//
///**
// * 1004
// * 查找城市列表
// */
//+ (void)postGetCityDataWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDCityModel *model,NSError *error))block;
//
//
///**
// * 1008
// * 查询车型
// */
//+ (void)postGetCarListDataWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDCarListModel *model,NSError *error))block;
//
//
//
//
//
///**
// * 2005 
// * 注销用户
// */
//+ (void)postGetSignOutDataWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDSignOutModel *model,NSError *error))block;
//
//
//
//
///**
// * 1003
// * 服务类型：舒适型，商务型，豪华型，体验车
// */
//
//+ (void)postGetServiceTypeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDServiceTypeModel *model,NSError *error))block;
//
//
///**
// * 4993
// * 司机所有的经纬度 行驶定位点
// * 订单编号下
// */
//+ (void)postGetRouteLocationWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDRouteLocModel *model,NSError *error))block;
//
//
//
//
////**********************************/
//
//
///**
// * 2006 获取用户信息
// */
//+ (void)NetworkingWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDPersonInfoModel *model , NSError *error))block;
//
//
///**
// * 4023 我的行程列表
// */
//+ (void)getOrderListWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDMytripModel *model, NSError *error))block;
//
//
//
///**
// * 3003 获取收入列表
// */
//+ (void)getIncomeListWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDMyIncomeModel *model, NSError *error))block;
//
//
//
//
///**
// * 4005, 获取订单详情
// */
//+ (void)getOrderDetailWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDPersonEndTripModel *model, NSError *error))block;
//
//
//
///**
// * 6004 乘客上车
// */
//+ (void)PassangerUpCarWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDByCarGetPassangerModel *model, NSError *error))block;
//
//
//
///**
// * 6015, 乘客下车
// */
//+ (void)PassangerOutOfCarWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDByCarModel *model, NSError *error))block;
//
//
//
///**
// *  6007, 司机确认费用
// */
//+ (void)DriverConfirmCostWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDConfirmCostModel *model, NSError *error))block;
//
//
//
///**
// * 2008
// * 修改头像
// */
//+ (void)changHeaderImageWihtImage:(UIImage *)image dictionary:(NSDictionary *)dic resltBlock:(void (^)(YDUpLoadModel *model, NSError *error))block;
//
//










@end
