//
//  QMLogManager.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-18.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMLogManager.h"

@implementation QMLogManager


-(void)log{
    NSLog(@"%@",self.logContent);
}

-(NSMutableString*)logContent{
    NSMutableString * string = [[NSMutableString alloc]initWithCapacity:0];
    return string;
}

@end


@interface QMNetStartLogManager ()

@property (strong, nonatomic) NSString * apiName;
@property (strong, nonatomic) NSString * soapMessage;
@property (strong, nonatomic) NSString * completeURL;

@end

@interface QMNetCompleteManager ()
@property (strong, nonatomic) NSString * apiName;
@property (strong, nonatomic) NSString * completeURL;
@property (strong, nonatomic) NSString * result;
@property (strong, nonatomic) NSDate   * startDate;
@property (strong, nonatomic) NSDate   * completeDate;
@end

@implementation QMNetStartLogManager


+(void)creatAndLogSoapStart:(NSString*)completeURL api:(NSString*)apiName soapMsg:(NSString*)soapMsg{
    QMNetStartLogManager * manager = [[QMNetStartLogManager alloc]init];
    manager.completeURL = completeURL;
    manager.apiName = apiName;
    manager.soapMessage = soapMsg;
    [manager log];
}

-(NSMutableString*)logContent{
    
    NSMutableString * string = [super logContent];
    
    [string appendString:[NSString stringWithFormat:@"\n"
    "----------------------------------------------------------\n"
     "发起请求:\n"
     "请求API:\n"
     "             %@\n"
     "请求URL:\n"
     "             %@\n"
     "SOAP内容:\n"
     "             %@\n"
     "----------------------------------------------------------\n"
     ,self.apiName,self.completeURL,self.soapMessage
     ]];

    return string;
}

@end


@implementation QMNetCompleteManager

+(void)creatAndLogWithURL:(NSString*)completeURL
                  apiName:(NSString*)apiName
                   result:(NSString*)result
                startDate:(NSDate*)startDate
             completeDate:(NSDate*)completeDate{
    
    QMNetCompleteManager * manager = [[QMNetCompleteManager alloc]init];
    manager.completeURL = completeURL;
    manager.result = result;
    manager.startDate = startDate;
    manager.completeDate = completeDate;
    manager.apiName = apiName;
    [manager log];
    
}

-(NSMutableString*)logContent{


    NSMutableString * string = [super logContent];
    
    NSTimeInterval  time =[self.completeDate timeIntervalSinceDate:self.startDate];
    
    [string appendString:[NSString stringWithFormat:@"\n"
                          "----------------------------------------------------------\n"
                          "完成请求:\n"
                          "请求API:\n"
                          "             %@\n"
                          "请求URL:\n"
                          "             %@\n"
                          "接口耗时:\n"
                          "             %.3f毫秒\n"
                          "返回数据:\n"
                          "\n"
                          "%@\n"
                          "\n"
                          "----------------------------------------------------------\n"
                          ,self.apiName,self.completeURL,time*1000,self.result
                          ]];
    
    return string;
}

@end