//
//  QMGoods.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMGoods.h"

@implementation QMGoods

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    if (self = [super initWithDictionary:dictionary]) {
        self.id_goods = [dictionary objectForKey:@"id"];
        
        NSMutableArray * commentlist = [[NSMutableArray alloc]initWithCapacity:0];
        NSArray * commentS = [dictionary objectForKey:@"comments"];
        if ([commentS count] > 0) {
            for (NSDictionary * dic in commentS) {
                [commentlist safeAddObject: [CommentsData objectFromDictionary:dic]];
            }
            self.commentsData = commentlist;
        }
        
        NSMutableArray * img_urlsList = [[NSMutableArray alloc]initWithCapacity:0];
        NSArray * img_urlS = [dictionary objectForKey:@"img_urls"];
        if ([img_urlS count] > 0) {
            for (NSDictionary * dic in img_urlS) {
                [img_urlsList safeAddObject: [Image_urlData objectFromDictionary:dic]];
            }
            self.img_urlsData = img_urlsList;
        }
        
        
    }
    return self;
}

//-(NSNumber*)isNew{
//    
//    NSTimeInterval time = [self.starttime floatValue];
//    NSDate * date = [NSDate dateWithTimeIntervalSince1970:time];
//    return @([date isToday]);
//}

-(NSString*)oprice{
    if ([_oprice isKindOfClass:[NSNumber class]]) {
        _oprice = [NSString stringWithFormat:@"%.2f",[((NSNumber*)_oprice) floatValue]];
        return _oprice;
    }
    return _oprice;
}

-(NSString*)cprice{
    if ([_cprice isKindOfClass:[NSNumber class]]) {
        _cprice = [NSString stringWithFormat:@"%.2f",[((NSNumber*)_cprice) floatValue]];
        return _cprice;
    }
    return _cprice;
}


@end




@implementation CommentsData
//- (id)initWithDictionary:(NSDictionary *)dictionary{
//    if (self = [super initWithDictionary:dictionary]) {
//        
//    }
//    return self;
//}


@end

@implementation Image_urlData
//- (id)initWithDictionary:(NSDictionary *)dictionary{
//    if (self = [super initWithDictionary:dictionary]) {
//        
//    }
//    return self;
//}
//

@end
