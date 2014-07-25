//
//  QMAppInfo.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"

@interface QMAppInfo : QMBaseOutput
@property (unsafe_unretained, nonatomic) BOOL has_newver;
@property (strong, nonatomic) NSString * picurl;
@property (nonatomic ,strong) NSString *addr;
@end
