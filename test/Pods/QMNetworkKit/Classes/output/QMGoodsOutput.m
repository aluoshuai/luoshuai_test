//
//  QMGoodsOutput.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMGoodsOutput.h"
#import "QMGoods.h"
#import "QMSpecial.h"
@implementation QMGoodsOutput

@end

@implementation QMGoodsOutput_getGoodsList

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * goodslist = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [goodslist safeAddObject:[QMGoods objectFromDictionary:dic]];
        }
//        self.goodslist = goodslist;

        NSMutableArray * speciallist = [NSMutableArray arrayWithCapacity:0];
        if ([dictionary objectForKey:@"speciallist"] !=[NSNull null]) {
            for (NSDictionary * dic in [dictionary objectForKey:@"speciallist"]) {
                [speciallist safeAddObject:[QMSpecial objectFromDictionary:dic]];
            }
        }

        self.speciallist_ = speciallist;
        
        self.goodslist = [self insertSort:self.speciallist_ WithArray:goodslist];
    }
    return self;
}

-(NSArray *)insertSort:(NSArray *)list WithArray:(NSMutableArray *)goodslist
{
    for (int i = 0 ; i < list.count; i ++) {
        QMSpecial *special = [list safeObjectAtIndex:i];
        NSInteger location = [special.location integerValue];
        [goodslist insertObject:[list safeObjectAtIndex:i] atIndex:location];
    }
    return goodslist;
}

@end

@implementation QMGoodsOutput_getGoodsAthorList

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * goodslist = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [goodslist safeAddObject:[QMGoods objectFromDictionary:dic]];
        }
        self.goodslist = goodslist;
    }
    return self;
}
@end

@implementation QMGoodsOutput_getGoodsSearch

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [array safeAddObject:[QMGoods objectFromDictionary:dic]];
        }
        self.searchlist = array;
    }
    return self;
}

@end

@implementation QMGoodsOutput_getGoodsinfo

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        self.goods = [QMGoods objectFromDictionary:dictionary];
    }
    return self;
}

@end

@implementation QMGoodsOutput_getGoodsStatus

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [array safeAddObject:dic];
        }
        self.status = array;
    }
    return self;
}

@end

@implementation QMGoodsOutput_getTagGoods

-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:0];
        for (NSDictionary * dic in [dictionary objectForKey:NET_KEY_LIST]) {
            [array safeAddObject:[QMGoods objectFromDictionary:dic]];
        }
        self.goodslist = array;
    }
    return self;
}

@end



