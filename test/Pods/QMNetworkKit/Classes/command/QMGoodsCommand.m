//
//  QMGoodsCommand.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMGoodsCommand.h"


@implementation QMGoodsCommand

-(NSString*)apiPath{
    return NET_APIPATH_GOODS;
}

@end

@implementation QMGoodsCommand_getGoodsList

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array addObject:@{@"type": [self typeToString:self.type]}];
    [array addObject:@{@"class": [self classToString:self.class_goods]}];
    [array addObject:@{@"page": self.page}];
    [array addObject:@{@"pagenum": self.pagenum}];
    [array addObject:@{@"g_id": self.g_id}];
    return array;
}
    
-(NSString*)page{
    if (!_page) {
        return @"1";
    }
    return _page;
}
    
-(NSString*)pagenum{
    if (!_pagenum) {
        return @"20";
    }
    return _pagenum;
}

-(NSString*)g_id{
    if (!_g_id) {
        return @"";
    }
    return _g_id;
}
    
-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getGoodsList objectFromDictionary:dic];
}

-(NSString*)apiName{
    return @"getGoodsList";
}

-(NSString*)typeToString:(Type)type{
    switch (type) {
        case all:
            return @"all";
            break;
        case yugao:
            return @"yugao";
            break;
        case xinpin:
            return @"xinpin";
            break;
        case jiukuaijiu:
            return @"jiu";
            break;
        case shijiukuaijiu:
            return @"shijiu";
            break;
        default:
            break;
    }
    return @"";
}

-(NSString*)classToString:(Class_goods)class{
    switch (class) {
        case all_goods:
            return @"all";
            break;
        case fushi:
            return @"fushi";
            break;
        case meizhuang:
            return @"meizhuang";
            break;
        case xiebao:
            return @"xiebao";
            break;
        case muying:
            return @"muying";
            break;
        case meishi:
            return @"meishi";
            break;
        case jujia:
            return @"jujia";
            break;
        case shuma:
            return @"shuma";
            break;
        case wenti:
            return @"wenti";
            break;
        default:
            break;
    }
    return @"";
}
@end

@implementation QMGoodsCommand_getGoodsAthorList

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getGoodsAthorList objectFromDictionary:dic];
}

-(NSString*)apiName{
    return @"getGoodsAthorList";
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array addObject:@{@"act": self.act}];
    [array addObject:@{@"page": self.page}];
    [array addObject:@{@"pagenum": self.pagenum}];
    return array;
}
@end

@implementation QMGoodsCommand_getGoodsSearch


-(NSString*)apiName{
    return @"getGoodsSearch";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getGoodsSearch objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"keywords": self.keywords}];
    [array safeAddObject:@{@"page": self.page}];
    [array safeAddObject:@{@"pagenum": self.pagenum}];
    return array;
}

-(NSString*)keywords{
    if (!_keywords) {
        return @"";
    }
    return _keywords;
}
    
-(NSString*)page{
    if (!_page) {
        return @"1";
    }
    return _page;
}
    
-(NSString*)pagenum{
    if (!_pagenum) {
        return PAGENUM;
    }
    return _pagenum;
}
    

    
@end

@implementation QMGoodsCommand_getGoodsinfo

-(NSString*)apiName{
    return @"getGoodsinfo";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getGoodsinfo objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"g_id": self.g_id}];
    return array;
}

-(NSString*)g_id{
    if (!_g_id) {
        return @"";
    }
    return _g_id;
}

@end

@implementation QMGoodsCommand_getGoodsStatus

-(NSString*)apiName{
    return @"getGoodsStatus";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getGoodsStatus objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableString *string = [[NSMutableString alloc] init];
    for (int i = 0; i < self.gids.count; i++) {
        [string appendString:[self.gids safeObjectAtIndex:i]];
        [string appendString:@","];
    }
    [string deleteCharactersInRange:NSMakeRange([string length] - 1, 1)];

    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"gids": string}];
    return array;
}


@end

@implementation QMGoodsCommand_getTagGoods

-(NSString*)apiName{
    return @"getTagGoods";
}

-(void)creatOutput:(NSDictionary*)dic{
    self.output = [QMGoodsOutput_getTagGoods objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"tag_id": self.tag_id}];
    return array;
}

    
-(NSString*)tag_id{
    if (!_tag_id) {
        return @"";
    }
    return _tag_id;
}
@end







