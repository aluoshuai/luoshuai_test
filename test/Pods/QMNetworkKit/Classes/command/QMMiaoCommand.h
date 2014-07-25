//
//  QMMiaoCommand.h
//  Jiukuaiyou_2.0
//
//  Created by lee on 14-4-2.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMBaseCommand.h"

@interface QMMiaoCommand : QMBaseCommand

@end

@interface QMMiaoCommand_getMiaoList : QMMiaoCommand

@end





@interface QMMiaoCommand_getGoodsQuanLink : QMMiaoCommand
@property (strong, nonatomic) NSString * goodsid;
@property (strong, nonatomic) NSString * password;
@end

@interface QMMiaoCommand_getBrandList : QMMiaoCommand
@property (strong, nonatomic) NSString * bid;
@property (strong, nonatomic) NSString * page;
@end