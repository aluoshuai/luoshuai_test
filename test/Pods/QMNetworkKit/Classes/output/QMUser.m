//
//  QMUser.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMUser.h"

@implementation QMUser

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        self.double_class = [dictionary objectForKey:@"double"];
    }
    return self;
}

@end
