//
//  QMUserOutput.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMUserOutput.h"

@implementation QMUserOutput

@end

@implementation QMUserOutput_login

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_register

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_connect

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_setuserpwd

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_setuserpic

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_forgetpwd

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_dou

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_thirdLogin

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end


@implementation QMUserOutput_redpointConfig

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
        self.redpointConfigs = [dictionary objectForKey:@"news"];
    }
    return self;
}

@end


@implementation QMUserOutput_getFavoriteGoods

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:@"list"]) {
            [array safeAddObject:[QMGoods objectFromDictionary:dic]];
        }
        self.goodslist = array;
    }
    return self;
}


@end

@implementation QMUserOutput_addFavorite
-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}
@end

@implementation QMUserOutput_cancelFavorite
-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}

@end

@implementation QMUserOutput_getFavoriteGoodsIds

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        
        NSString * string = [dictionary objectForKey:@"g_ids"];
        NSArray * array = [string componentsSeparatedByString:@","];
        NSMutableArray * mArray=[NSMutableArray arrayWithCapacity:0];
        for (NSString * string in array) {
            if ([string isEqualToString:@""]) {
                
            }else{
                [mArray safeAddObject:string];
            }
        }
        
        self.g_ids = mArray;
        
        
    }
    return self;
}

@end


@implementation QMUserOutput_setSignPush

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}

@end


@implementation QMUserOutput_getUserConfig

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.user = [QMUser objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMUserOutput_getTaskStates

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.taskDic = dictionary;
    }
    return self;
}

@end

@implementation QMUserOutput_checkEmail

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}


@end

@implementation QMUserOutput_checkEmailCode

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}

@end

@implementation QMUserOutput_checkPhone

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}

@end

@implementation QMUserOutput_checkPhoneCode

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
    }
    return self;
}

@end

@implementation QMUserOutput_getUserConnect

- (id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.connetDic = dictionary;
    }
    return self;
}

@end