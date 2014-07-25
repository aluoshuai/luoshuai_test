//
//  QMUserOutput.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"
#import "QMUser.h"
#import "QMGoods.h"

@interface QMUserOutput : QMBaseOutput

@end

@interface QMUserOutput_login : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_register : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_connect : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_setuserpwd : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_setuserpic : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_forgetpwd : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_dou : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_thirdLogin : QMUserOutput

@property (strong ,nonatomic) QMUser *user;

@end

@interface QMUserOutput_redpointConfig : QMUserOutput

@property (strong, nonatomic) NSArray * redpointConfigs;

@end

@interface QMUserOutput_getFavoriteGoods : QMUserOutput

@property (strong, nonatomic) NSArray * goodslist;
@property (strong, nonatomic) NSString * page;
@property (strong, nonatomic) NSString * total;

@end

@interface QMUserOutput_addFavorite: QMUserOutput


@property (strong, nonatomic) NSString * code;//code 0000成功
@property (strong, nonatomic) NSString * msg;

@end

@interface QMUserOutput_cancelFavorite: QMUserOutput


@property (strong, nonatomic) NSString * code;//code 0000成功
@property (strong, nonatomic) NSString * msg;

@end


@interface QMUserOutput_getFavoriteGoodsIds : QMUserOutput
@property (strong, nonatomic) NSArray * g_ids;
@end



@interface QMUserOutput_setSignPush : QMUserOutput
@property (strong, nonatomic) NSNumber *result;
@end

@interface QMUserOutput_getUserConfig : QMUserOutput
@property (strong ,nonatomic) QMUser *user;
@end

//每日任务  网站签到：101
//移动端签到：102
//新手任务  完善信息资料：201
//安装姊妹应用-卷皮折扣：202
//关注卷皮QQ空间：203
//关注卷皮微信公众账号：204
//认证电子邮箱：205
//认证手机号码：206

// Key：任务代码  Value：状态0未完成 1已完成
@interface QMUserOutput_getTaskStates : QMUserOutput
@property (strong, nonatomic) NSDictionary * taskDic;
@end

@interface QMUserOutput_checkEmail : QMUserOutput

@end

@interface QMUserOutput_checkEmailCode : QMUserOutput

@end

@interface QMUserOutput_checkPhone : QMUserOutput

@end

@interface QMUserOutput_checkPhoneCode : QMUserOutput

@end

@interface QMUserOutput_getUserConnect : QMUserOutput
@property (strong, nonatomic) NSDictionary * connetDic;
@end