//
//  AFHTTPRequestOperationManager+Soap.m
//  QMNetworkKitDemo
//
//  Created by Brick on 14-7-11.
//  Copyright (c) 2014年 Brick. All rights reserved.
//

#import "AFHTTPRequestOperationManager+Soap.h"

@implementation AFHTTPRequestOperationManager (Soap)

- (AFHTTPRequestOperation *)SOAP:(NSString *)URLString
       constructingBodyWithBlock:(void (^)(NSMutableURLRequest *request))block
                         success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    NSError * error ;
    NSMutableURLRequest * request = [self.requestSerializer multipartFormRequestWithMethod:@"POST" URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:nil constructingBodyWithBlock:nil error:&error];
    
    block(request);
    AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request success:success failure:failure];
    [self.operationQueue addOperation:operation];
    
    return operation;
}


@end
