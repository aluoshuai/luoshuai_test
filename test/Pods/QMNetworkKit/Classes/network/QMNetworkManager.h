//
//  QMNetworkManager.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-17.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

/**
 *
 *   网络请求管理
 *   接收网络请求命令
 *
 *   内部请求为Soap Websevice请求
 *
 *   单例模式,管理一个请求的队列
 *   返回队列中与网络请求命令对应的操作对象NSOperation
 *
 **/

#import <Foundation/Foundation.h>
#import "QMBaseCommand.h"
#import "AFHTTPRequestOperation+QMEX.h"
#import "AFHTTPRequestOperationManager+Soap.h"

@class QMBaseCommand;
@interface QMNetworkManager : NSObject

+ (NSOperation *)requestWithCommand:(QMBaseCommand *)command;

@end