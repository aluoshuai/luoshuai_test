//
//  QMUser.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"

@interface QMUser : QMBaseOutput

@property (strong, nonatomic) NSString * uid;//用户id
@property (strong, nonatomic) NSString * username;
@property (strong, nonatomic) NSString * token;
@property (strong, nonatomic) NSString * user_pic;
@property (strong, nonatomic) NSString * juandou;
@property (strong, nonatomic) NSNumber * hassign;
@property (strong, nonatomic) NSString * oauth_url;
@property (strong, nonatomic) NSNumber * email_exist;
@property (strong, nonatomic) NSNumber * double_class;//与double冲突
@property (strong, nonatomic) NSNumber * result;
@property (strong, nonatomic) NSNumber * num;
@property (strong, nonatomic) NSString * pic;
@property (strong, nonatomic) NSString * s_uid;
@property (strong, nonatomic) NSString * s_sign;
@property (strong, nonatomic) NSString * isSignPush;
@property (strong, nonatomic) NSString * data;

@property (strong, nonatomic) NSString * signdays;//连续签到天数

@end
