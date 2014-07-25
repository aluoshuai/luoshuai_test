//
//  QMBaseCommand.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-18.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseCommand.h"


@interface QMBaseCommand ()

@end

@implementation QMBaseCommand


- (id)init
{
    self = [super init];
    if (self) {
        self.baseURL = NET_DOMAIN_JUANPI;
    }
    return self;
}

-(NSString*)apiName{
    return @"";
}

-(NSString*)apiPath{
    return @"";
}


-(NSString*)completeURL{
    NSMutableString * string = [NSMutableString stringWithString:self.baseURL];
    [string appendString:self.apiPath];
    
    return string;
}


-(NSString*)datatime{
    
    if (_datatime) {
        return _datatime;
    }
    NSNumber * time = @([[NSDate date] timeIntervalSince1970]);
    _datatime =[NSString stringWithFormat:@"%d",[time integerValue]];
    return _datatime;
    
}

-(NSString*)sign{
    NSMutableArray * array = [self propertyToArray];
    NSMutableString * sign = [[NSMutableString alloc] initWithCapacity:0];
    for (NSDictionary * dic in array) {
        if ([[dic allKeys] count] > 0) {
            [sign appendString:[[dic allValues]lastObject]];
        }
    }
    [sign appendString:NET_PUBLIC_KEY];
    return [sign encryptToMD5];
}

-(NSString*)soapMessage{
    
    NSString * apiName = [self apiName];
    
    NSMutableString *soapMessage = [[NSMutableString alloc]initWithCapacity:0];
    [soapMessage appendString:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                                                "<soap:Envelope "
                                                "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" "
                                                "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" "
                                                "xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\">"
                                                "<soap:Body>"];
    
    [soapMessage appendString:[NSString stringWithFormat:@"<%@>",apiName]];
    
    NSMutableArray * array = [self propertyToArray];
    [array safeAddObject:@{@"sign": self.sign}];
    
    for (NSDictionary * dic in array) {
        NSString * key = [[dic allKeys] lastObject];
        NSString * value = [[dic allValues] lastObject];
        [soapMessage appendString:[NSString stringWithFormat:@"<%@>%@</%@>",key,value,key]];
    }
    
    [soapMessage appendString:[NSString stringWithFormat:@"</%@>",apiName]];
    [soapMessage appendString:@"</soap:Body>"
                                                "</soap:Envelope>"];

    return soapMessage;
    
}


-(NSMutableArray*)propertyToArray{
    //子类继续实现
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
    [array safeAddObject:@{@"method": [self getMethod:self.method]}];
    [array safeAddObject:@{@"datatime": self.datatime}];
    return array;
}

-(NSString *)getMethod:(QMMethod )method
{
    
    if ([self.appName isEqualToString:@"juanpi"]) {
        return [NSString stringWithFormat:@"juanpi.iphone.zhe.%@",NET_VER];
    }else{
        return [NSString stringWithFormat:@"juanpi.iphone.jiu.%@",NET_VER];
    }

    return @"";
}
-(void)creatOutput:(NSDictionary*)dic{
    
}



#pragma mark - 扩展属性


-(NSString*)appName{
    if (!_appName) {
        return @"jiukuaiyou";
    }
    return _appName;
}

-(NSString*)token{
    if (!_token) {
        return @"";
    }
    return _token;
}

-(NSString*)ticks{
    if (!_ticks) {
        return @"";
    }
    return _ticks;
}

-(NSString*)s_uid{
    if (!_s_uid) {
        return @"";
    }
    return _s_uid;
}

-(NSString*)s_sign{
    if (!_s_sign) {
        return @"";
    }
    return _s_sign;
}


@end
