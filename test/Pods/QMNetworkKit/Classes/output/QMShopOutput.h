//
//  QMShopOutput.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"
#import "QMShop.h"
#import "QMBrand.h"
#import "QMZC.h"
#import "QMSecKill.h"

@interface QMShopOutput : QMBaseOutput

@end

@interface QMShopOutput_getBrands : QMShopOutput

@property (strong, nonatomic) NSArray * brandlist;//
@property (strong, nonatomic) NSArray * shoplist;

@end

@interface QMShopOutput_getBrandsGoods : QMShopOutput

@property (strong, nonatomic) QMBrand * brand;

@end

@interface QMShopOutput_getZc : QMShopOutput

@property (strong, nonatomic) QMShop * shop;

@end

@interface QMShopOutput_getZcInfo : QMShopOutput

@property (strong, nonatomic) QMZC * zc;

@end

@interface QMShopOutput_getbrandAnswer : QMShopOutput

@property (strong, nonatomic) QMSecKill * secKill;

@end