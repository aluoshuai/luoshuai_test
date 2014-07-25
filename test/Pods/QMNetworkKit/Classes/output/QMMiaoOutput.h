//
//  QMMiaoOutput.h
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-4-2.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMBaseOutput.h"
#import "QMSecKill.h"

@interface QMMiaoOutput : QMBaseOutput

@end

@interface QMMiaoOutput_getMiaoList : QMMiaoOutput

@property (strong, nonatomic) QMSecKill * secKillList;

@end

@interface QMMiaoOutput_getGoodsQuanLink : QMMiaoOutput

@property (strong, nonatomic) QMSecKill * secKillList;

@end

@interface QMMiaoOutput_getBrandList : QMMiaoOutput

@property (strong, nonatomic) QMSecKill * secKillList;

@end