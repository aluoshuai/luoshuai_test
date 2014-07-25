//
//  QMSecKill.m
//  Jiukuaiyou_2.0
//  秒杀VO
//  Created by lee on 14-4-1.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMSecKill.h"
#import "QMShop.h"

@implementation QMSecKill

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        NSMutableArray * shoplist = [[NSMutableArray alloc]initWithCapacity:0];
        if ([[[dictionary objectForKey:@"shop"] class] isSubclassOfClass:[NSString class]]) {
            return self;
        }
        NSArray * shops = [dictionary objectForKey:@"shop"];
        
        for (NSDictionary * dic in shops) {
            if ([dic isKindOfClass:[NSDictionary class]]) {
                [shoplist safeAddObject: [QMShop objectFromDictionary:dic]];
            }
        }
        self.shoplist = shoplist;
    }
    return self;
}

@end
