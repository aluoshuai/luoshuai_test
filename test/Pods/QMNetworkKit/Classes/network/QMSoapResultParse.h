//
//  QMSoapResultParse.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

/**
 *
 *   Soap请求结果解析成json对象
 *
 **/

#import <Foundation/Foundation.h>

@interface QMSoapResultParse : NSObject <NSXMLParserDelegate>

+ (void)parse:(NSData *)data complete:(void (^)(id jsonResult))callback;

@end