//
//  QMShopCommand.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseCommand.h"
#import "QMShopOutput.h"

@interface QMShopCommand : QMBaseCommand

@end

// <wsdl:message name="getBrandsRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="page" type="xsd:int" note="$page 当前页"/>
// <wsdl:part name="pagenum" type="xsd:int" note="$pagenum 页面大小"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>
@interface QMShopCommand_getBrands : QMShopCommand
@property (strong, nonatomic) NSString  *page;
@property (strong, nonatomic) NSString  *pagenum;
@end

// <wsdl:message name="getBrandsGoodsRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="shop_id" type="xsd:string" note="$shop_id品牌团店铺id"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>
@interface QMShopCommand_getBrandsGoods : QMShopCommand
@property (strong, nonatomic) NSString *shop_id;
@end

// <wsdl:message name="getZcRequest">
// <wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
// <wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
// <wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>
@interface QMShopCommand_getZc : QMShopCommand
@end

//<wsdl:part name="method" type="xsd:string" note="$method调用参数android.zhe.2.2.3"/>
//<wsdl:part name="datatime" type="xsd:string" note="$datatime时间戳"/>
//<wsdl:part name="zc_name" type="xsd:string" note="$zc_name 专场的英文名"/>
//<wsdl:part name="page" type="xsd:int" note="$page 当前页"/>
//<wsdl:part name="pagenum" type="xsd:int" note="$pagenum 页面大小"/>
//<wsdl:part name="g_id" type="xsd:string" note="$g_id 商品id从首页点击进入时需要将该商品的店铺排在最前"/>
//<wsdl:part name="sign" type="xsd:string" note="$sign 认证码"/>

typedef enum {
    shishangZC  =0,
    muyingZC    =1,
    jujiaZC         =2,
    meishiZC      =3,
    wenyuZC     =4
} Zc_name;

@interface QMShopCommand_getZcInfo : QMShopCommand
@property (unsafe_unretained, nonatomic) Zc_name zc_name;
@property (strong, nonatomic) NSString * page;
@property (strong, nonatomic) NSString * pagenum;
@property (strong, nonatomic) NSString * g_id;
@end

@interface QMShopCommand_getbrandQuestion : QMShopCommand

@end

@interface QMShopCommand_getbrandAnswer : QMShopCommand
@property (strong, nonatomic) NSString * answer;
@end