//
//  QMShop.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMShop.h"
#import "QMBrand.h"

@implementation QMShop

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * goodslist = [[NSMutableArray alloc]initWithCapacity:0];
        NSArray * shops = [dictionary objectForKey:@"goods"];
        for (NSDictionary * dic in shops) {
            [goodslist safeAddObject: [QMGoods objectFromDictionary:dic]];
        }
        self.goodslist = goodslist;
    }
    return self;
}

@end
