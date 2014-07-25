//
//  QMGoodsCommand.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseCommand.h"
#import "QMGoodsOutput.h"

@interface QMGoodsCommand : QMBaseCommand

@end


typedef enum {
    all,
    yugao,
    xinpin,
    jiukuaijiu,
    shijiukuaijiu
} Type;

typedef enum {
    all_goods,
    fushi,
    meizhuang,
    xiebao,
    muying,
    meishi,
    jujia,
    shuma,
    wenti
} Class_goods;

//<wsdl:part name="method" type="xsd:string" note="$method 调用参数juanpi.android.zhe.2.2.3"/>
//<wsdl:part name="datatime" type="xsd:string" note="$datatime 时间戳"/>
//<wsdl:part name="type" type="xsd:string" note="$type 数据类型 预告：yugao 新品:xinpin 默认：all ，九块九：jiu,十九：shijiu"/>
//<wsdl:part name="class" type="xsd:string" note="$class 分类 默认：all,男装：nanzhuang,女装：nvzhuang,美妆：meizhuang,鞋包：xiebao,母婴：muying,美食：meishi,居家：jujia,数码：shuma,文体：wenti,服饰：fushi"/>
//<wsdl:part name="page" type="xsd:int" note="$page 当前页"/>
//<wsdl:part name="pagenum" type="xsd:int" note="$pagenum 页面大小"/>
//<wsdl:part name="g_id" type="xsd:string" note="$g_id 商品id,查询推荐商品时用到（默认为空，如果有值则$class参数为该商品的分类）"/>
//<wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>
@interface QMGoodsCommand_getGoodsList : QMGoodsCommand
@property (unsafe_unretained, nonatomic) Type           type;
@property (unsafe_unretained, nonatomic) Class_goods    class_goods; // class避免冲突加后缀
@property (strong, nonatomic) NSString                  *page;
@property (strong, nonatomic) NSString                  *pagenum;
@property (strong, nonatomic) NSString                  *g_id;

@end

@interface QMGoodsCommand_getGoodsAthorList : QMGoodsCommand
@property (strong, nonatomic) NSString                  *act;
@property (strong, nonatomic) NSString                  *page;
@property (strong, nonatomic) NSString                  *pagenum;
@end
// <wsdl:part name="keywords" type="xsd:string" note="$keywords查询关键字"/>
// <wsdl:part name="page" type="xsd:int" note="$page当前页"/>
// <wsdl:part name="pagenum" type="xsd:int" note="$pagenum页面大小"/>
@interface QMGoodsCommand_getGoodsSearch : QMGoodsCommand
@property (strong, nonatomic) NSString  *keywords;
@property (strong, nonatomic) NSString  *page;
@property (strong, nonatomic) NSString  *pagenum;
@end

// <wsdl:message name="getGoodsinfoRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="g_id" type="xsd:string" note="$g_id 商品id"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>

@interface QMGoodsCommand_getGoodsinfo : QMGoodsCommand
@property (strong, nonatomic) NSString *g_id;
@end

// <wsdl:message name="getGoodsStatusRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="gids" type="soap-enc:Array" note="$gids 商品id数组集"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>

@interface QMGoodsCommand_getGoodsStatus : QMGoodsCommand
@property (strong, nonatomic) NSArray *gids;
@end

// <wsdl:message name="getTagGoodsRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="tag_id" type="xsd:string" note="$tag_id 种类id"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>
@interface QMGoodsCommand_getTagGoods : QMGoodsCommand
@property (strong, nonatomic) NSString *tag_id;
@end





