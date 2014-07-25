//
//  QMShopOutput.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMShopOutput.h"
#import "QMShop.h"
#import "QMBrand.h"

@implementation QMShopOutput

@end

@implementation QMShopOutput_getBrands

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
        NSMutableArray * brandlist = [NSMutableArray arrayWithCapacity:0];
        NSArray * brandArray = [dictionary objectForKey:@"brandlist"];
        for (NSDictionary * dic in brandArray) {
            [brandlist safeAddObject:[QMBrand objectFromDictionary:dic]];
        }
        self.brandlist = brandlist;
        
        
        NSMutableArray * shoplist = [NSMutableArray arrayWithCapacity:0];
        NSArray * shopArray = [dictionary objectForKey:@"content"];
        for (NSDictionary * dic in shopArray) {
            [shoplist safeAddObject:[QMShop objectFromDictionary:dic]];
        }
        self.shoplist = shoplist;
        
    }
    return self;
}

@end

@implementation QMShopOutput_getBrandsGoods

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.brand =[QMBrand objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMShopOutput_getZc

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.shop =[QMShop objectFromDictionary:dictionary];
    }
    return self;
}


@end

@implementation QMShopOutput_getZcInfo

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.zc =[QMZC objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMShopOutput_getbrandAnswer

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.secKill =[QMSecKill objectFromDictionary:dictionary];
    }
    return self;
}

@end