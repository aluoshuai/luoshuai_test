//
//  NSNumber+safe.h
//  Juanpi
//
//  Created by huang jiming on 14-1-8.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (safe)

- (BOOL)safeIsEqualToNumber:(NSNumber *)number;

- (NSComparisonResult)safeCompare:(NSNumber *)otherNumber;

@end
