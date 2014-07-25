//
//  AFHTTPRequestOperationManager+Soap.h
//  QMNetworkKitDemo
//
//  Created by Brick on 14-7-11.
//  Copyright (c) 2014年 Brick. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface AFHTTPRequestOperationManager (Soap)


- (AFHTTPRequestOperation *)SOAP:(NSString *)URLString
       constructingBodyWithBlock:(void (^)(NSMutableURLRequest *request))block
                         success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
