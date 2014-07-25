//
//  QMBrand.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBrand.h"
#import "QMGoods.h"

@implementation QMBrand

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * goodslist = [[NSMutableArray alloc]initWithCapacity:0];
        NSArray * goods = [dictionary objectForKey:@"goodsdata"];
        for (NSDictionary * dic in goods) {
            [goodslist safeAddObject: [QMGoods objectFromDictionary:dic]];
        }
        self.goodslist = goodslist;
    }
    return self;
}

@end
