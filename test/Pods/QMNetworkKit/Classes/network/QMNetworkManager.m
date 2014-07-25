//
//  QMNetworkManager.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-17.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMNetworkManager.h"

#import "AFNetworking.h"
#import "QMLogManager.h"
#import "QMSoapResultParse.h"



typedef void(^AFSuccessCallback)(AFHTTPRequestOperation *operation, id responseObject);
typedef void(^AFFailureCallback)(AFHTTPRequestOperation *operation, id responseObject);

@interface QMNetworkManager ()<NSXMLParserDelegate>

@property (strong, nonatomic) AFHTTPRequestOperationManager * manager;
@property (strong, nonatomic) NSString * jsonResult;

@end

@implementation QMNetworkManager

//单例
+ (QMNetworkManager*)sharedInstance
{
    static dispatch_once_t pred = 0;
    __strong static QMNetworkManager * _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init]; // or some other init method
    });
    
    return _sharedObject;
}

+(void)creat{
    [self sharedInstance];
}


- (id)init
{
    self = [super init];
    if (self) {
        self.manager = [AFHTTPRequestOperationManager manager];
        [self.manager.operationQueue setMaxConcurrentOperationCount:NET_MAX_OPERATIONCOUNT];
    }
    return self;
}


+(BOOL)checkDic:(NSDictionary*)dic{
    if (dic) {
       NSString * code = [dic objectForKey:NET_KEY_CODE];
        if (code&&[code isEqualToString:@"1001"]) {
            return YES;
        }
        if (code&&[code isEqualToString:@"1004"]) {
            return YES;
        }
    }
    return NO;
}


+(void)handleResult:(NSDictionary*)dic error:(NSError*)error op:(AFHTTPRequestOperation*)op command:(QMBaseCommand*)command{
    
    
    [QMNetCompleteManager creatAndLogWithURL:[op.response.URL absoluteString] apiName:command.apiName result:op.responseString startDate:op.af_startDate completeDate:[NSDate date]];
    if ([self checkDic:dic]) {
        
        id object = [dic objectForKey:NET_KEY_DATA];
        NSDictionary * tempDic = nil;
        if ([object isKindOfClass:[NSDictionary class]]) {
            tempDic = object;
        }else if ([object isKindOfClass:[NSArray class]]){
            tempDic = [[NSDictionary alloc] initWithObjectsAndKeys:object,NET_KEY_LIST,nil];
        }else if ([object isKindOfClass:[NSNumber class]]){
            tempDic = [NSDictionary dictionaryWithObject:object forKey:@"result"];
        }
        
        
        [command creatOutput:tempDic];
        
        if (command.callback) {
            command.callback(command.output,nil);
        }
        
    }else{
        
        NSString * code = nil;
        
        if (dic) {
            code = [dic objectForKey:NET_KEY_CODE];
        }else if (error){
            code = [NSString stringWithFormat:@"%d",error.code];
        }
        
        if (command.callback) {
            command.callback(nil,code);
        }
        
    }
    
}

+(NSOperation*)requestWithCommand:(QMBaseCommand*)command{
    
    //设置成功回调方法
    AFSuccessCallback success =^(AFHTTPRequestOperation *operation, id responseObject) {
        [QMSoapResultParse parse:responseObject complete:^(id jsonResult) {
            [self handleResult:jsonResult error:nil op:operation command:command];
        }];

    };
    
    //设置失败回调方法
    AFFailureCallback failure =^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@,%@",operation,error);
        [self handleResult:nil error:error op:operation command:command];
    };
    
    AFHTTPRequestOperationManager *manager = [self sharedInstance].manager;
    
    NSString *soapLength = [NSString stringWithFormat:@"%lu", (unsigned long)[command.soapMessage length]];
    manager.responseSerializer = [[AFHTTPResponseSerializer alloc] init];
    [manager.requestSerializer setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:soapLength forHTTPHeaderField:@"Content-Length"];
    
    
    AFHTTPRequestOperation * op = nil;
    op = [manager SOAP:command.completeURL constructingBodyWithBlock:^(NSMutableURLRequest *request) {
        [request setHTTPBody:[command.soapMessage dataUsingEncoding:NSUTF8StringEncoding]];
        [request setTimeoutInterval:NET_TIMEOUT];
    } success:success failure:failure];
    [QMNetStartLogManager creatAndLogSoapStart:[op.request.URL absoluteString] api:command.apiName soapMsg:command.soapMessage];
    op.af_startDate = [NSDate date];
    return op;
}


@end




