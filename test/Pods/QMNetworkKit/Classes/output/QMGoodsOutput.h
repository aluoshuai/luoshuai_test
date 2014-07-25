//
//  QMGoodsOutput.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

/**
 *
 *   Goods输出集合
 *
 **/

#import "QMBaseOutput.h"
#import "QMGoods.h"

@interface QMGoodsOutput : QMBaseOutput @end

@interface QMGoodsOutput_getGoodsList : QMGoodsOutput

@property (strong, nonatomic) NSArray *goodslist;
@property (strong, nonatomic) NSArray *speciallist_;
@property (strong, nonatomic) NSString * tips;

@end

@interface QMGoodsOutput_getGoodsAthorList : QMGoodsOutput
@property (strong, nonatomic) NSArray *goodslist;
@end

@interface QMGoodsOutput_getGoodsSearch : QMGoodsOutput

@property (strong, nonatomic) NSArray * searchlist;

@end

@interface QMGoodsOutput_getGoodsinfo : QMGoodsOutput

@property (strong, nonatomic) QMGoods *goods;

@end

@interface QMGoodsOutput_getGoodsStatus : QMGoodsOutput

@property (strong, nonatomic) NSArray * status;

@end

@interface QMGoodsOutput_getTagGoods : QMGoodsOutput

@property (strong, nonatomic) NSArray * goodslist;

@end



