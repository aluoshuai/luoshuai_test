//
//  QMMiaoOutput.m
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-4-2.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMMiaoOutput.h"
#import "QMShop.h"

@implementation QMMiaoOutput

@end

@implementation QMMiaoOutput_getMiaoList

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.secKillList = [QMSecKill objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMMiaoOutput_getGoodsQuanLink

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.secKillList = [QMSecKill objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMMiaoOutput_getBrandList

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.secKillList = [QMSecKill objectFromDictionary:dictionary];
    }
    return self;
}

@end