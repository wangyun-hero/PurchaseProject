//
//  NSString+Valid.h
//  CreditInvestigation
//
//  Created by 缺月梧桐 on 2016/12/19.
//  Copyright © 2016年 yishilvren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Valider)

/** 根据要显示的text计算label高度 */
- (CGSize)contentSizeWithText:(UIFont *)font size:(CGSize)size;

/** 判断返回字符串是否为空 */
+ (BOOL)isBlankString:(NSString *)string;

@end
