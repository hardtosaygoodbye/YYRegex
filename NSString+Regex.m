//
//  NSString+Regex.m
//  daqinjia
//
//  Created by Willow Ma on 2017/10/7.
//  Copyright © 2017年 Willow Ma. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

- (BOOL)isMatchRegex:(NSString *)regex{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

- (BOOL)isChinaMobilePhoneNumber{
    return [self isMatchRegex:@"^1(3[4-9]|4[7]|5[0-27-9]|7[08]|8[2-478])\\d{8}$"];
}

- (BOOL)isChinaUnicomPhoneNumber{
    return [self isMatchRegex:@"^1(3[0-2]|4[5]|5[56]|7[0156]|8[56])\\d{8}$"];
}

- (BOOL)isChinaTelecomPhoneNumber{
    return [self isMatchRegex:@"^1(3[3]|4[9]|53|7[037]|8[019])\\d{8}$"];
}

- (BOOL)isChinaPhoneNumber{
    return [self isMatchRegex:@"^1(3|4|5|7|8)[0-9]\\d{8}$"];
}

- (BOOL)isEmail{
    return [self isMatchRegex:@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\\\.[A-Za-z]{2,4}"];
}

- (BOOL)isPIN{
    return [self isMatchRegex:@"(^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)|(^[1-9]\\d{5}\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{2}[0-9Xx]$)"];
}

- (BOOL)isChinese{
    return [self isMatchRegex:@"^[\\u4e00-\\u9fa5]+$"];
}

- (BOOL)isPostalCode{
    return [self isMatchRegex:@"^[0-8]\\\\d{5}(?!\\\\d)$"];
}

@end
