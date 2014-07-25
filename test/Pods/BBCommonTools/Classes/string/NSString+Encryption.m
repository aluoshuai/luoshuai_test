//
//  NSString+Encryption.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "NSString+Encryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Encryption)

- (NSString *) encryptToMD5{
    if(self == nil || [self length] == 0)
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return outputString;
}

+ (NSString *) encrypt10262:(NSNumber *)inum{
    long long num = [inum longLongValue];
    NSString *_t = @"";
    while(num!=0){
        int c = num%62;
        if(c>=10&&c<36){
            _t = [NSString stringWithFormat:@"%c%@", (c+55), _t ];
        }else if(c>=36&&c<62){
            _t = [NSString stringWithFormat:@"%c%@", (c+61), _t ];
        }else{
            _t = [NSString stringWithFormat:@"%d%@", c, _t ];
        }
        num= num/62;
    }
    return _t;
}

+ (NSString *)createOutCode:(NSNumber *)uid ticks:(NSNumber *)ticks fanli:(BOOL)fanli {
    NSString *u = [self encrypt10262:uid];
    NSUInteger L = [u length];
    NSString *firstchar = [NSString stringWithFormat:@"%d", L];
    if(fanli == NO)//不返利
    {
        L = 65+L;
        firstchar = [NSString stringWithFormat:@"%c", L];
    }
    NSString *outCode =[NSString stringWithFormat:@"%@%@%@", firstchar, u,[self encrypt10262:ticks] ];
    return outCode ;
}


@end
