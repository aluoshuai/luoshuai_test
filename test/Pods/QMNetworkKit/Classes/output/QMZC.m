//
//  QMZC.m
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-3-5.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMZC.h"
#import "QMShop.h"

@implementation QMZC

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * shoplist = [[NSMutableArray alloc]initWithCapacity:0];
        NSArray * shops = [dictionary objectForKey:@"shop"];
        for (NSDictionary * dic in shops) {
            [shoplist safeAddObject: [QMShop objectFromDictionary:dic]];
        }
        self.shoplist = shoplist;
    }
    return self;
}

@end
