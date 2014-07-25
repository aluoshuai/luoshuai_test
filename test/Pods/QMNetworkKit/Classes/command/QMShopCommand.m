//
//  QMShopCommand.m
//  Juanpi_2.0
//
//  Created by lee on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMShopCommand.h"


@implementation QMShopCommand

-(NSString*)apiPath{
    return NET_APIPATH_SHOP;
}

@end

@implementation QMShopCommand_getBrands

-(NSString*)apiName
{
    return @"getBrands";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMShopOutput_getBrands objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"page": self.page}];
    [array safeAddObject:@{@"pagenum": self.pagenum}];
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
@end

@implementation QMShopCommand_getBrandsGoods

-(NSString*)apiName
{
    return @"getBrandsGoods";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMShopOutput_getBrandsGoods objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    
    [array safeAddObject:@{@"shop_id": self.shop_id}];
    return array;
}

-(NSString*)shop_id{
    if (!_shop_id) {
        return @"";
    }
    return _shop_id;
}
@end

@implementation QMShopCommand_getZc

-(NSString*)apiName
{
    return @"getZc";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMShopOutput_getZc objectFromDictionary:dic];
}

@end
@implementation QMShopCommand_getZcInfo

-(NSString*)apiName
{
    return @"getZcInfo";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMShopOutput_getZcInfo objectFromDictionary:dic];
}

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"zc_name": [self zcToString:self.zc_name]}];
    [array safeAddObject:@{@"page": self.page}];
    [array safeAddObject:@{@"pagenum": self.pagenum}];
    [array safeAddObject:@{@"g_id": self.g_id}];
    return array;
}

-(NSString*)zcToString:(Zc_name )zc_name
{
    switch (zc_name) {
        case shishangZC:
            return @"shishang";
            break;
        case muyingZC:
            return @"muying";
            break;
        case jujiaZC:
            return @"jujia";
            break;
        case meishiZC:
            return @"meishi";
            break;
        case wenyuZC:
            return @"wenyu";
            break;
        default:
            break;
    }
}

-(NSString*)pagenum{
    if (!_pagenum) {
        return @"20";
    }
    return _pagenum;
}

-(NSString*)page{
    if (!_page) {
        return @"1";
    }
    return _page;
}

-(NSString*)g_id{
    if (!_g_id) {
        return @"";
    }
    return _g_id;
}

@end

@implementation QMShopCommand_getbrandAnswer

-(NSMutableArray*)propertyToArray{
    NSMutableArray * array = [super propertyToArray];
    [array safeAddObject:@{@"answer": self.answer}];
    return array;
}

-(NSString*)apiName
{
    return @"getbrandAnswer";
}

-(void)creatOutput:(NSDictionary*)dic
{
    self.output = [QMShopOutput_getbrandAnswer objectFromDictionary:dic];
}

@end