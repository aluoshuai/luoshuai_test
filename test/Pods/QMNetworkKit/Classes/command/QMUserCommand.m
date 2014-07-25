//
//  QMUserCommand.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMUserCommand.h"

@implementation QMUserCommand

-(NSString*)apiPath{
    return NET_APIPATH_USER;
}

@end

@implementation QMUserCommand_login

-(NSString*)apiName{
    return @"login";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_login objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"username": self.username}];
    [array safeAddObject:@{@"password": [self.password encryptToMD5]}];
    return array;
}

-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}

-(NSString*)password{
    if (!_password) {
        return @"";
    }
    return _password;
}

@end


@implementation QMUserCommand_loginv2

-(NSString*)apiName{
    return @"loginv2";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_login objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"username": self.username}];
    [array safeAddObject:@{@"password": [self.password encryptToMD5]}];
    NSString * json = [NSString stringWithFormat:@"{\"ticks\":\"%@\"}",self.ticks];
    [array safeAddObject:@{@"extend":json}];
    return array;
}

-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}

-(NSString*)password{
    if (!_password) {
        return @"";
    }
    return _password;
}

@end

@implementation QMUserCommand_register

-(NSString*)apiName{
    return @"register";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_register objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"username": self.username}];
    [array safeAddObject:@{@"email": self.email}];
    [array safeAddObject:@{@"password": self.password}];
    return array;
}


-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}

-(NSString*)email{
    if (!_email) {
        return @"";
    }
    return _email;
}

-(NSString*)password{
    if (!_password) {
        return @"";
    }
    return _password;
}

@end

@implementation QMUserCommand_registerv2

-(NSString*)apiName{
    return @"registerv2";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_register objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"username": self.username}];
    [array safeAddObject:@{@"email": self.email}];
    [array safeAddObject:@{@"password": self.password}];
    NSString * json = [NSString stringWithFormat:@"{\"ticks\":\"%@\"}",self.ticks];
    [array safeAddObject:@{@"extend":json}];
    return array;
}


-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}

-(NSString*)email{
    if (!_email) {
        return @"";
    }
    return _email;
}

-(NSString*)password{
    if (!_password) {
        return @"";
    }
    return _password;
}

@end

@implementation QMUserCommand_connect

-(NSString*)apiName{
    return @"connect";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_connect objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"site": self.site}];
    return array;
}

-(NSString*)site{
    if (!_site) {
        return @"";
    }
    return _site;
}

@end

@implementation QMUserCommand_connectv2

-(NSString*)apiName{
    return @"connectv2";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_connect objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"site": self.site}];
    NSString * json = [NSString stringWithFormat:@"{\"ticks\":\"%@\"}",self.ticks];
    [array safeAddObject:@{@"extend":json}];
    return array;
}

-(NSString*)site{
    if (!_site) {
        return @"";
    }
    return _site;
}

@end

@implementation QMUserCommand_setuserpwd

-(NSString*)apiName{
    return @"setuserpwd";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_setuserpwd objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array addObject:@{@"username": self.username}];
    [array addObject:@{@"oldpwd": [self.oldpwd encryptToMD5]}];
    [array addObject:@{@"newpwd": self.newpwd}];
    [array addObject:@{@"token": self.token}];
    return array;
}



-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}

-(NSString*)newpwd{
    if (!_newpwd) {
        return @"";
    }
    return _newpwd;
}

-(NSString*)oldpwd{
    if (!_oldpwd) {
        return @"";
    }
    return _oldpwd;
}



@end

@implementation QMUserCommand_setuserpic

-(NSString*)apiName{
    return @"setuserpic";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_setuserpic objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSData *data = UIImagePNGRepresentation(self.pic);
    NSString *base64 = [data base64Encoding];
    if (!base64) {
        base64 = @"";
    }
    
    NSMutableArray * array = [super propertyToArray];
    [array addObject:@{@"username": self.username}];
    [array addObject:@{@"pic": base64}];
    [array addObject:@{@"picname": self.picname}];
    [array addObject:@{@"picsize": [NSString stringWithFormat:@"%d",[data length]]}];
    [array addObject:@{@"token": self.token}];
    return array;
}

-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}



-(NSString *)picname
{
    return [self.datatime stringByAppendingString:@".jpg"];
}


@end

@implementation QMUserCommand_forgetpwd

-(NSString*)apiName{
    return @"forgetpwd";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_forgetpwd objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"email": self.email}];
    return array;
}

-(NSString*)email{
    if (!_email) {
        return @"";
    }
    return _email;
}


@end

@implementation QMUserCommand_dou

-(NSString*)apiName{
    return @"dou";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_dou objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"username": self.username}];
    [array safeAddObject:@{@"token": self.token}];
    return array;
}

-(NSString*)username{
    if (!_username) {
        return @"";
    }
    return _username;
}


@end

@implementation QMUserCommand_thirdLogin

-(NSString*)apiName{
    return @"third_login";
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"client": self.client}];
    [array safeAddObject:@{@"thirdUid": self.thirdUid}];
    [array safeAddObject:@{@"token": self.token}];
    [array safeAddObject:@{@"thirdNick": self.thirdNick}];
    [array safeAddObject:@{@"picurl": self.picurl}];
    return array;
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_thirdLogin objectFromDictionary:dic];
}
@end

@implementation QMUserCommand_thirdLoginv2

-(NSString*)apiName{
    return @"third_loginv2";
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"client": self.client}];
    [array safeAddObject:@{@"thirdUid": self.thirdUid}];
    [array safeAddObject:@{@"token": self.token}];
    [array safeAddObject:@{@"thirdNick": self.thirdNick}];
    [array safeAddObject:@{@"picurl": self.picurl}];
    NSString * json = [NSString stringWithFormat:@"{\"ticks\":\"%@\"}",self.ticks];
    [array safeAddObject:@{@"extend":json}];
    return array;
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMUserOutput_thirdLogin objectFromDictionary:dic];
}
@end



@implementation QMUserCommand_redpointConfig
-(NSString*)apiName{
    return @"redpointConfig";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_redpointConfig objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}


@end


@implementation QMUserCommand_getFavoriteGoods

-(NSString*)apiName{
    return @"getFavoriteGoods";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_getFavoriteGoods objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"pagenum": self.pagenum}];
    [array safeAddObject:@{@"page": self.page}];
    [array safeAddObject:@{@"type": self.type}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}




@end

@implementation QMUserCommand_addFavorite

-(NSString*)apiName{
    return @"addFavorite";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_addFavorite objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"g_id": self.g_id}];

    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}

@end

@implementation QMUserCommand_cancelFavorite
-(NSString*)apiName{
    return @"cancelFavorite";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_cancelFavorite objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"g_id": self.g_id}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}


@end

@implementation QMUserCommand_getFavoriteGoodsIds

-(NSString*)apiName{
    return @"getFavoriteGoodsIds";
}

-(void)creatOutput:(NSDictionary*)dic{
   self.output = [QMUserOutput_getFavoriteGoodsIds objectFromDictionary:dic];
    
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}


@end

@implementation QMUserCommand_loginout

-(NSString*)apiName{
    return @"loginout";
}

-(void)creatOutput:(NSDictionary*)dic{
    
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}

@end



@implementation QMUserCommand_setSignPush
-(NSString*)apiName{
    return @"setSignPush";
}
- (void)creatOutput:(NSDictionary *)dic{
    self.output = [QMUserOutput_setSignPush objectFromDictionary:dic];
}
- (NSMutableArray *)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"isSignPush": self.isSignPush}];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"token": self.token}];
    [array safeAddObject:@{@"ticks": self.ticks}];
    return array;
}
- (NSString *)isSignPush{
    if (!_isSignPush) {
        return @"";
    }
    return _isSignPush;
}

@end



@implementation QMUserCommand_getUserConfig

-(NSString*)apiName{
    return @"getUserConfig";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_getUserConfig objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"token":self.token}];
    //将ticks赋值到扩展字段extend里面
    [array safeAddObject:@{@"extend":self.ticks}];
    return array;
}

@end

@implementation QMUserCommand_getTaskStates

-(NSString*)apiName{
    return @"getTaskStates";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_getTaskStates objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"token":self.token}];
    [array safeAddObject:@{@"extend":@""}];
    return array;
}


@end

@implementation QMUserCommand_checkEmail

-(NSString*)apiName{
    return @"checkEmail";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_checkEmail objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"email":self.email}];
    [array safeAddObject:@{@"token":self.token}];
    return array;
}

@end

@implementation QMUserCommand_checkEmailCode

-(NSString*)apiName{
    return @"checkEmailCode";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_checkEmailCode objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"emailCode":self.emailCode}];
    [array safeAddObject:@{@"token":self.token}];
    return array;
}

@end

@implementation QMUserCommand_checkPhone

-(NSString*)apiName{
    return @"checkPhone";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_checkPhone objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"phone":self.phone}];
    [array safeAddObject:@{@"token":self.token}];
    return array;
}

@end

@implementation QMUserCommand_checkPhoneCode

-(NSString*)apiName{
    return @"checkPhoneCode";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_checkPhoneCode objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"phoneCode":self.phoneCode}];
    [array safeAddObject:@{@"token":self.token}];
    return array;
}

@end

@implementation QMUserCommand_getUserConnect

-(NSString*)apiName{
    return @"getUserConnect";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMUserOutput_getUserConnect objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"s_uid": self.s_uid}];
    [array safeAddObject:@{@"s_sign": self.s_sign}];
    [array safeAddObject:@{@"token":self.token}];
    return array;
}

@end