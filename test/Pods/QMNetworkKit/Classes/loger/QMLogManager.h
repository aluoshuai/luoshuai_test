//
//  QMLogManager.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-18.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QMLogManager : NSObject

@property (strong, nonatomic) NSMutableString *logContent;

- (void)log;

@end

// Net

@interface QMNetStartLogManager : QMLogManager

+ (void)creatAndLogSoapStart:(NSString *)completeURL api:(NSString *)apiName soapMsg:(NSString *)soapMsg;

@end

@interface QMNetCompleteManager : QMLogManager

+ (void)creatAndLogWithURL  :(NSString *)completeURL
        apiName             :(NSString *)apiName
        result              :(NSString *)result
        startDate           :(NSDate *)startDate
        completeDate        :(NSDate *)completeDate;

@end