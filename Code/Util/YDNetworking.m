//
//  YDNetworking.m
//  HH_Entity
//
//  Created by maoziyue on 17/6/2.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import "YDNetworking.h"
#import "MJExtension.h"
#import "YDNetWork.h"
#import "AFNetworking.h"






@implementation YDNetworking


///**
// * 5082
// * 实时叫单
// */
//+ (void)postGetSSOrderDataWithDictionary:(NSDictionary *)dict
//{
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        NSLog(@"----%@-----%@------",responseBody[@"status"][@"code"],responseBody[@"status"][@"msg"]);
//        
//    } failure:^(NSError *error) {
//        
//    }];
//    
//}
//
//
//
///**
// * 2006 获取用户信息
// */
//+ (void)NetworkingWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDPersonInfoModel *model, NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        
//        YDPersonInfoModel *enti = [YDPersonInfoModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//       
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
//
///**
// * 4023 我的行程列表
// */
//+ (void)getOrderListWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDMytripModel *model, NSError *error))block
//{
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        YDMytripModel *enti = [YDMytripModel mj_objectWithKeyValues:responseBody];
//        
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//
//}
//
///**
// * 3003 获取收入列表
// */
//+ (void)getIncomeListWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDMyIncomeModel *model, NSError *error))block
//{
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        YDMyIncomeModel *enti = [YDMyIncomeModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//    
//}
//
//
///**
// * 4005, 获取订单详情
// */
//+ (void)getOrderDetailWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDPersonEndTripModel *model, NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//    
//        YDPersonEndTripModel *enti = [YDPersonEndTripModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
//
//
///**
// * 6004 乘客上车
// */
//+ (void)PassangerUpCarWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDByCarGetPassangerModel *model, NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        YDByCarGetPassangerModel *enti = [YDByCarGetPassangerModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//
//}
//
//
///**
// * 6015, 乘客下车
// */
//+ (void)PassangerOutOfCarWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDByCarModel *model, NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        YDByCarModel *enti = [YDByCarModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//        
//    } failure:^(NSError *error) {
//        if (block) {
//            block(nil,error);
//        }
//  
//    }];
//    
//}
//
//
//
///**
// *  6007, 司机确认费用
// */
//+ (void)DriverConfirmCostWithDictionary:(NSDictionary *)dic resltBlock:(void (^)(YDConfirmCostModel *model, NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        YDConfirmCostModel *enti = [YDConfirmCostModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//    }];
//}
//
//
//
///**
// * 2008
// * 修改头像
// */
//+ (void)changHeaderImageWihtImage:(UIImage *)image dictionary:(NSDictionary *)dic resltBlock:(void (^)(YDUpLoadModel *model, NSError *error))block
//{
//    
//    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",
//                                                         
//                                                         @"text/html",
//                                                         
//                                                         @"image/jpeg",
//                                                         
//                                                         @"image/png",
//                                                         
//                                                         @"application/octet-stream",
//                                                         
//                                                         @"text/json",
//                                                         
//                                                         nil];
//    
//    manager.requestSerializer= [AFHTTPRequestSerializer serializer];
//    
//    manager.responseSerializer= [AFHTTPResponseSerializer serializer];
//    
//    NSString *url = [NSString stringWithFormat:@"%@?sid=2008&token=%@", GATEWAY, dic[@"token"]];
//    
//    
//    [manager POST:url parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//        
//        NSData *picture = UIImageJPEGRepresentation(image, 0.5);
//        [formData appendPartWithFileData:picture name:@"photoPath" fileName:@"photo.jpg" mimeType:@"photo/jpg"];
//        
//    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        
//        id json = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
//        
//        NSLog(@"----%@----%@------",json[@"sid"],json);
//        
//        YDUpLoadModel *enti = [YDUpLoadModel mj_objectWithKeyValues:responseObject];
//        
//        if (block) {
//            block(enti,nil);
//        }
//        
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
//
///**
// * 2004
// * 登录
// */
//+ (void)postGetLoginDataWithDictionary:(NSDictionary *)dic resultBlock:(void (^)(YDLoginModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dic success:^(id responseBody) {
//        
//        //NSLog(@"-------2004---%@------",responseBody);
//        
//        YDLoginModel *enti = [YDLoginModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//    
//}
//
//
///**
// * 2002
// * 司机注册
// */
//+ (void)postGetRegistDataWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDRegistModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDRegistModel *enti = [YDRegistModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
///**
// * 1004
// * 查找城市列表
// */
//+ (void)postGetCityDataWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDCityModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDCityModel *enti = [YDCityModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//        
//    } failure:^(NSError *error) {
//    
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
///**
// * 1001
// * 找回密码验证码
// */
//+ (void)postGetForgetCodeWithDictionary:(NSDictionary *)dict  resultBlock:(void (^)(YDForgetCodeModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//    
//        YDForgetCodeModel *enti = [YDForgetCodeModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
//
///**
// * 2010
// * 找回密码
// */
//+ (void)postGetForgetPassWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDForgetPassModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDForgetPassModel *enti = [YDForgetPassModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
//
//
///**
// * 1022
// * 注册时候验证码
// */
//+ (void)postGetRegistCodeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDRegistCodeModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        YDRegistCodeModel *enti = [YDRegistCodeModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
//
///**
// * 1008
// * 查询车型
// */
//+ (void)postGetCarListDataWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDCarListModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDCarListModel *enti = [YDCarListModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
//
//
///**
// * 1013
// * 注册时校验短信验证码
// */
//+ (void)postGetRegistCheckCodeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDRegistCheckModel *model,NSError *error))block
//{
//    
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//    
//        YDRegistCheckModel *enti = [YDRegistCheckModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
///**
// * 2005
// * 注销用户
// */
//+ (void)postGetSignOutDataWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDSignOutModel *model,NSError *error))block
//{
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDSignOutModel *enti = [YDSignOutModel mj_objectWithKeyValues:responseBody];
//        
//        if (block) {
//            block(enti,nil);
//        }
//    } failure:^(NSError *error) {
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//}
//
//
///**
// * 1003
// * 服务类型：舒适型，商务型，豪华型，体验车
// */
//
//+ (void)postGetServiceTypeWithDictionary:(NSDictionary *)dict resultBlock:(void (^)(YDServiceTypeModel *model,NSError *error))block
//{
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDServiceTypeModel *enti = [YDServiceTypeModel mj_objectWithKeyValues:responseBody];
//        
////        NSLog(@"-------1003----%@--------",responseBody);
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//}
//
//
///**
// * 4993
// * 司机所有的经纬度
// * 订单编号下
// */
//+ (void)postGetRouteLocationWithDictionary:(NSDictionary *)dict resultBlock:(void(^)(YDRouteLocModel *model,NSError *error))block
//{
//    [YDNetWork POST:GATEWAY parameters:dict success:^(id responseBody) {
//        
//        YDRouteLocModel *enti = [YDRouteLocModel mj_objectWithKeyValues:responseBody];
//        if (block) {
//            block(enti,nil);
//        }
//        
//    } failure:^(NSError *error) {
//        
//        if (block) {
//            block(nil,error);
//        }
//        
//    }];
//    
//    
//}
//
//

@end
