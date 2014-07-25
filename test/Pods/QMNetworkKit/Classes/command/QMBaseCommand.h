//
//  QMBaseCommand.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-18.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

/**
 *
 *   网络命令对象
 *   包含一下几个部分
 *   1.URL参数
 *   2.API信息
 *   3.输出对象
 *   4.回调方法
 *
 *   所有的网络请求API命令对象都继承此类
 *   实现<QMBaseCommandProtocol>中的方法, 进行可定制的扩展
 *
 **/

#import <Foundation/Foundation.h>
#import "QMBaseOutput.h"
#import "QMNetworkManager.h"
#import "QMNetDefine.h"


typedef enum {
    jiu = 0,
    zhe
}QMMethod;

typedef  void (^ QMCommandCallback)(id resultObject, NSString *errorCode);

@protocol QMBaseCommandProtocol <NSObject>

- (NSMutableArray *)propertyToArray;
- (NSString *)apiPath;
- (NSString *)apiName;

- (void)creatOutput:(NSDictionary *)dic;

@end

@interface QMBaseCommand : NSObject <QMBaseCommandProtocol>

@property (strong, nonatomic) QMCommandCallback callback;
- (void)setCallback:(QMCommandCallback)callback;

#pragma mark - URL参数
@property (strong, nonatomic) NSString  *baseURL;
@property (strong, nonatomic) NSString  *completeURL;

#pragma mark - 属性
@property (unsafe_unretained, nonatomic) QMMethod  method; //
@property (strong, nonatomic) NSString  *datatime;
@property (strong, nonatomic) NSString  *sign;

#pragma mark -其他通用参数
//引入库的时候需要根据环境配置
@property (strong, nonatomic) NSString * ticks;
@property (strong, nonatomic) NSString * s_sign;
@property (strong, nonatomic) NSString * s_uid;
@property (strong, nonatomic) NSString * token;
@property (strong, nonatomic) NSString * appName;

#pragma mark - 输入
@property (strong, nonatomic) NSString *soapMessage;

#pragma mark - 输出
@property (strong, nonatomic) QMBaseOutput *output;

@end