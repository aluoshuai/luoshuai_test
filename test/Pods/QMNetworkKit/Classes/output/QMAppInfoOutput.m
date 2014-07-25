//
//  QMAppInfoOutput.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMAppInfoOutput.h"

@implementation QMAppInfoOutput

@end

@implementation QMAppInfoOutput_vercheck

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.info = [QMAppInfo objectFromDictionary:dictionary];
    }
    return self;
}

@end


@implementation QMAppInfoOutput_savePhoneInfo



@end

@implementation QMAppInfoOutput_appJumpInfo

@end

@implementation QMAppInfoOutput_openAct


@end

@implementation QMAppInfoOutput_getActBanner

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [array safeAddObject:[QMBanner objectFromDictionary:dic]];
        }
        self.bannerArray = array;
    }
    return self;
}

@end

@implementation QMAppInfoOutput_tbsite

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.taobaoconfig = [QMTBConfig objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMAppInfoOutput_getWelPic

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.info = [QMAppInfo objectFromDictionary:dictionary];
    }
    return self;
}

@end