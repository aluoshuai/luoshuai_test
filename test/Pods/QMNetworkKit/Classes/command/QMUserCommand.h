//
//  QMUserCommand.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseCommand.h"
#import "QMUserOutput.h"


@interface QMUserCommand : QMBaseCommand

@end

// <wsdl:message name="loginRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="username" type="xsd:string" note="用户名"/>
// <wsdl:part name="password" type="xsd:string" note="md5(密码)"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_login : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) NSString  *password;
@end

@interface QMUserCommand_loginv2 : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) NSString  *password;
@end

// <wsdl:message name="registerRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="username" type="xsd:string" note="用户名"/>
// <wsdl:part name="email" type="xsd:string" note="注册邮箱"/>
// <wsdl:part name="password" type="xsd:string" note="密码"/> 不加密的password
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_register : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) NSString  *email;
@property (strong, nonatomic) NSString  *password;
@end

@interface QMUserCommand_registerv2 : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) NSString  *email;
@property (strong, nonatomic) NSString  *password;
@end

// <wsdl:message name="connectRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="site" type="xsd:string" note="qq|tao|sina"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_connect : QMUserCommand
@property (strong, nonatomic) NSString *site;
@end

@interface QMUserCommand_connectv2 : QMUserCommand
@property (strong, nonatomic) NSString *site;
@end

// <wsdl:message name="setuserpwdRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="username" type="xsd:string" note="用户名"/>
// <wsdl:part name="oldpwd" type="xsd:string" note="md5(旧密码)"/>
// <wsdl:part name="newpwd" type="xsd:string" note="新密码"/>
// <wsdl:part name="token" type="xsd:string" note="登录token"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_setuserpwd : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) NSString  *oldpwd;
@property (strong, nonatomic) NSString  *newpwd;

@end

// <wsdl:message name="setuserpicRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="username" type="xsd:string" note="用户名"/>
// <wsdl:part name="pic" type="xsd:string" note="base64（图片内容的二进制流）"/>
// <wsdl:part name="picname" type="xsd:string" note="图片名"/>
// <wsdl:part name="picsize" type="xsd:string" note="图片大小"/>
// <wsdl:part name="token" type="xsd:string" note="登录token"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_setuserpic : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@property (strong, nonatomic) UIImage   *pic;
@property (strong, nonatomic) NSString  *picname;
@property (strong, nonatomic) NSString  *picsize;

@end

// <wsdl:message name="forgetpwdRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="email" type="xsd:string" note="注册邮箱"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_forgetpwd : QMUserCommand
@property (strong, nonatomic) NSString *email;
@end

// <wsdl:message name="douRequest">
// <wsdl:part name="method" type="xsd:string" note="版本号"/>
// <wsdl:part name="datatime" type="xsd:string" note="时间戳"/>
// <wsdl:part name="username" type="xsd:string" note="用户名"/>
// <wsdl:part name="token" type="xsd:string" note="登录token"/>
// <wsdl:part name="sign" type="xsd:string" note="数字签名"/>
@interface QMUserCommand_dou : QMUserCommand
@property (strong, nonatomic) NSString  *username;
@end

@interface QMUserCommand_thirdLogin : QMUserCommand
@property (strong, nonatomic) NSString * client;
@property (strong, nonatomic) NSString * thirdUid;
@property (strong, nonatomic) NSString * thirdNick;
@property (strong, nonatomic) NSString * picurl;
@end

@interface QMUserCommand_thirdLoginv2 : QMUserCommand
@property (strong, nonatomic) NSString * client;
@property (strong, nonatomic) NSString * thirdUid;
@property (strong, nonatomic) NSString * thirdNick;
@property (strong, nonatomic) NSString * picurl;
@end


@interface QMUserCommand_redpointConfig : QMUserCommand

@end


//s_uid "xxxxx"
//s_sign "xxxxx"
//ticks "xxxxx"
//pagenum "10"
//page "1"
//type   [0, 全部,1开抢提醒,2抢购中]
@interface QMUserCommand_getFavoriteGoods : QMUserCommand

@property (strong, nonatomic) NSString * page;
@property (strong, nonatomic) NSString * pagenum;
@property (strong, nonatomic) NSString * type;

@end

@interface QMUserCommand_addFavorite : QMUserCommand

@property (strong, nonatomic) NSString * g_id;
@end

@interface QMUserCommand_cancelFavorite : QMUserCommand

@property (strong, nonatomic) NSString * g_id;
@end


@interface QMUserCommand_getFavoriteGoodsIds: QMUserCommand

@end

@interface QMUserCommand_loginout : QMUserCommand

@end


@interface QMUserCommand_setSignPush : QMUserCommand
@property (strong, nonatomic) NSString *isSignPush;///值：0接收签到提醒  1不接收签到提醒

@end


@interface QMUserCommand_getUserConfig : QMUserCommand

@end

@interface QMUserCommand_getTaskStates : QMUserCommand
@end

@interface QMUserCommand_checkEmail : QMUserCommand
@property (strong, nonatomic) NSString * email;
@end

@interface QMUserCommand_checkEmailCode : QMUserCommand

@property (strong, nonatomic) NSString * emailCode;
@end

@interface QMUserCommand_checkPhone : QMUserCommand
@property (strong, nonatomic) NSString * phone;
@end

@interface QMUserCommand_checkPhoneCode : QMUserCommand
@property (strong, nonatomic) NSString * phoneCode;
@end

@interface QMUserCommand_getUserConnect : QMUserCommand

@end