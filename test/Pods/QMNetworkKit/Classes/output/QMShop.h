//
//  QMShop.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"
#import "QMGoods.h"

@interface QMShop : QMBaseOutput

@property (strong, nonatomic) NSString * shoptitle;
@property (strong, nonatomic) NSString * classtag;
@property (strong, nonatomic) NSNumber * postage;
@property (strong, nonatomic) NSArray * goodslist;
@property (strong, nonatomic) NSString * taobao_flag;
@property (strong, nonatomic) NSString * shopdes;
@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSString * discount;
@property (strong, nonatomic) NSString * zcpicurl;
@property (strong, nonatomic) NSString * zcname;
@property (strong, nonatomic) NSString * zcename;
@property (strong, nonatomic) NSString * endtime;
@end
