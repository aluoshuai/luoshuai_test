//
//  QMTBConfig.m
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-4-3.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMTBConfig.h"

@implementation QMTBConfig
- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        self.taobao_config = [dictionary objectForKey:@"taobao_config"];
        self.tmall_config = [dictionary objectForKey:@"tmall_config"];
    }
    return self;
}
@end
