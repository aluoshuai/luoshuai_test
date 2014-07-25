//
//  QMBrand.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"

@interface QMBrand : QMBaseOutput

@property (strong, nonatomic) NSString * id_brand;
@property (strong, nonatomic) NSString * brandtitle;
@property (strong, nonatomic) NSString * discount;
@property (strong, nonatomic) NSArray * goodslist;
@property (strong, nonatomic) NSString * taobao_flag;
@property (strong, nonatomic) NSString *logo;
@property (strong, nonatomic) NSString *img;

@property (strong, nonatomic) NSString * shoptitle;
@property (strong, nonatomic) NSString * classtag;
@property (strong, nonatomic) NSNumber * postage;
@end
