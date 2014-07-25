//
//  NSString+Encryption.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 字符串加密扩展
 
 **/

@interface NSString (Encryption)

- (NSString *) encryptToMD5;

//十进制转化成伪62进制
+ (NSString *)encrypt10262:(NSNumber*)num;
/**
* 生成跳出到淘宝的outcode，淘宝约定长度不能大于12个字符
* outcode生成规则： 通过62进制加密后的uid长度  +  62进制加密后的uid字符串  +  62进制加密后的ticks字符窜
* 特别注意：第一位长度的表示有两种表示方式，如果是数字表示的长度是从0开始的，他表示需要返利，如果第一位是字母表示的是从A开始的，表示不需要返利。
*/
+ (NSString *)createOutCode:(NSNumber *)uid ticks:(NSNumber *)ticks fanli:(BOOL)fanli;

@end
