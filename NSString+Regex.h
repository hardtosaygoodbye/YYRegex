//
//  NSString+Regex.h
//  daqinjia
//
//  Created by Willow Ma on 2017/10/7.
//  Copyright © 2017年 Willow Ma. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regex)

/**
 通用型正则表达式匹配

 @param regex 正则表达式
 @return 是否匹配
 */
- (BOOL)isMatchRegex:(NSString *)regex;

/**
 是否是中国移动手机号

 @return 是否匹配
 */
- (BOOL)isChinaMobilePhoneNumber;

/**
 是否是中国联通手机号

 @return 是否匹配
 */
- (BOOL)isChinaUnicomPhoneNumber;

/**
 是否是中国电信手机号

 @return 是否匹配
 */
- (BOOL)isChinaTelecomPhoneNumber;

/**
 是否是中国手机号

 @return 是否匹配
 */
- (BOOL)isChinaPhoneNumber;

/**
 是否是手机号

 @return 是否匹配
 */
- (BOOL)isEmail;


/**
 是否是身份证号

 @return 是否匹配
 */
- (BOOL)isPIN;

/**
 是否是纯汉字

 @return 是否匹配
 */
- (BOOL)isChinese;

/**
 是否是邮编

 @return 是否匹配
 */
- (BOOL)isPostalCode;
@end
