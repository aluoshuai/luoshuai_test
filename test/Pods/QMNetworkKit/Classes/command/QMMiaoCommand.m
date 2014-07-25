//
//  QMMiaoCommand.m
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-4-2.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMMiaoCommand.h"
#import "QMMiaoOutput.h"

@implementation QMMiaoCommand

-(NSString*)apiPath{
    return NET_APIPATH_MIAO;
}

@end

@implementation QMMiaoCommand_getMiaoList

-(NSString*)apiName
{
    return @"getMiaoList";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMMiaoOutput_getMiaoList objectFromDictionary:dic];
}

@end


@implementation QMMiaoCommand_getGoodsQuanLink

-(NSString*)apiName
{
    return @"getGoodsQuanLink";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMMiaoOutput_getGoodsQuanLink objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"goodsid":self.goodsid}];
    [array safeAddObject:@{@"password":self.password}];
    return array;
}

-(NSString *)password
{
    if (_password) {
        return _password;
    }
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSString *date = [formatter stringFromDate:[NSDate date]];
    NSString *newString = [NSString stringWithFormat:@"%@jiukuaiyoumiaosha",date];
    return [newString encryptToMD5];
}
@end

@implementation QMMiaoCommand_getBrandList

-(NSString*)apiName
{
    return @"getBrandList";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMMiaoOutput_getBrandList objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"page":self.page}];
    [array safeAddObject:@{@"bid":self.bid}];
    return array;
}

@end