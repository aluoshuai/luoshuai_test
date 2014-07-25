//
//  QMAppInfoCommand.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMAppInfoCommand.h"

@implementation QMAppInfoCommand

-(NSString*)apiPath{
    return NET_APIPATH_APPINFO;
}

@end

@implementation QMAppInfoCommand_vercheck

-(NSString*)apiName
{
    return @"vercheck2";
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"channel_id": self.channel_id}];
    [array safeAddObject:@{@"client_ver": self.client_ver}];
    return array;
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_vercheck objectFromDictionary:dic];
}

@end



@interface QMAppInfoCommand_savePhoneInfo ()

@property (strong, nonatomic) NSString * datatime;
//@property (strong, nonatomic) NSString * did;
//@property (strong, nonatomic) NSString * dmodel;
//@property (strong, nonatomic) NSString * dver;
@property (strong, nonatomic) NSString * dchannel;
//@property (strong, nonatomic) NSString * ver;
//@property (strong, nonatomic) NSString * droot;
@property (strong, nonatomic) NSString * apps;


@end

@implementation QMAppInfoCommand_savePhoneInfo
@synthesize datatime =_datatime;

-(NSString*)apiName
{
    return @"savePhoneInfo";
}

-(NSString*)data{
    NSString * string = [NSString stringWithFormat:@""
                         "{"
                         "\"datatime\":\"%@\","
                         "\"did\":\"%@\","
                         "\"dmodel\":\"%@\","
                         "\"dver\":\"%@\","
                         "\"dchannel\":\"%@\","
                         "\"ver\":\"%@\","
                         "\"droot\":\"%@\","
                         "\"apps\":\"%@\""
                         "}",
                         self.datatime,
                         self.did,
                         self.dmodel,
                         [NSString stringWithFormat:@"ios%@",self.dver],
                         self.dchannel,
                         self.ver,
                         self.droot,
                         self.apps
                         ];
    
    
    return string;
}

-(NSString*)datatime{
    
    if (_datatime) {
        return _datatime;
    }
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
    NSNumber * num = @(time*1000);
    _datatime = [NSString stringWithFormat:@"%lld",[num longLongValue]];
    return _datatime;
}

//-(NSString*)did{
//    return GLOBALVALUE.openUUID;
//}
//
//-(NSString*)dmodel{
//    return GLOBALVALUE.deviceName;
//}
//
//-(NSString*)dver{
//    return [GLOBALVALUE.systemVersion stringValue];
//}

#warning 存渠道名
-(NSString*)dchannel{
    return @"";
}

//-(NSString*)ver{
//    return GLOBALVALUE.app_Version;
//}
//
//-(NSString*)droot{
//    return GLOBALVALUE.isJailBreak?@"1":@"0";
//}

-(NSString*)apps{
    NSMutableString * string = [NSMutableString stringWithCapacity:0];
    if ([self checkTaobao]) {
        [string appendString:@"淘宝,"];
    }
    
    if ([self checkTmall]) {
        [string appendString:@"天猫,"];
    }
    
    if ([self checkJiukuaiyou]) {
        [string appendString:@"九块邮,"];
    }
    
    if ([self checkZhebabai]) {
        [string appendString:@"折800,"];
    }
    NSString * end = @"";
    if ([string length] > 0) {
        end = [string substringToIndex:[string length]-1];
    }
    
    
    return end;
}

- (BOOL)checkZhebabai
{
    NSURL   *url = [NSURL URLWithString:@"zhe800://"];
    BOOL has = [[UIApplication sharedApplication] canOpenURL:url];
    
    return has;
}


-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"data":self.data}];
    return array;
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_savePhoneInfo objectFromDictionary:dic];
}


- (BOOL)checkTaobao
{
    NSURL   *url = [NSURL URLWithString:@"taobao://"];
    return  [[UIApplication sharedApplication] canOpenURL:url];
}

- (BOOL)checkJiukuaiyou
{
    NSURL   *url = [NSURL URLWithString:@"jiukuaiyou://"];
    return  [[UIApplication sharedApplication] canOpenURL:url];
}

- (BOOL)checkTmall
{
    NSURL   *url = [NSURL URLWithString:@"tmall://"];
    return  [[UIApplication sharedApplication] canOpenURL:url];
}

@end


@interface QMAppInfoCommand_appJumpInfo ()
//@property (nonatomic,strong) NSString *appticks;
//
//@property (nonatomic,strong) NSString *uid;
@end

@implementation QMAppInfoCommand_appJumpInfo

-(NSString*)apiName
{
    return @"appJumpInfo";
}

-(NSString*)data
{
    NSString * string = [NSString stringWithFormat:@""
              "{"
              "\"appticks\":\"%@\","
              "\"pid\":\"%@\","
              "\"jticks\":\"%@\","
              "\"uid\":\"%@\""
              "}",
              self.appticks,
              self.pid,
              self.jticks,
              self.uid
              ];
    
    return string;
}

//-(NSString*)appticks
//{
//    return GLOBALVALUE.ticks;
//}

-(NSString*)jticks
{
    if (_jticks) {
        return _jticks;
    }
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
    NSNumber * num = @(time*1000);
    _jticks = [NSString stringWithFormat:@"%lld",[num longLongValue]];
    return _jticks;
}

//-(NSString*)uid
//{
//    if ([_uid length] > 0) {
//        return GLOBALVALUE.userValue.uid;
//    }else{
//        return @"0";
//    }
//}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"data":self.data}];
    return array;
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_appJumpInfo objectFromDictionary:dic];
}



@end

@implementation QMAppInfoCommand_openAct

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_openAct objectFromDictionary:dic];
}

-(NSString*)apiName
{
    return @"openAct";
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"cline_ver":self.cline_ver}];
    return array;
}

@end

@implementation QMAppInfoCommand_getActBanner

-(NSString*)apiName
{
    return @"getActBanner";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_getActBanner objectFromDictionary:dic];
}

@end

@implementation QMAppInfoCommand_tbsite

-(NSString*)apiName
{
    return @"tbsite";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_tbsite objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"client_ver":self.client_ver}];
    return array;
}
@end

@implementation QMAppInfoCommand_getWelPic

-(NSString*)apiName
{
    return @"getWelPic";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMAppInfoOutput_getWelPic objectFromDictionary:dic];
}

@end

