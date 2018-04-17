//
//  NSString+Valid.m
//  CreditInvestigation
//
//  Created by 缺月梧桐 on 2016/12/19.
//  Copyright © 2016年 yishilvren. All rights reserved.
//

#import "NSString+Valider.h"

@implementation NSString (Valider)

//根据要显示的text计算label高度(因为是ios7+ 所以不用加判断)
- (CGSize)contentSizeWithText:(UIFont *)font size:(CGSize)size
{
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName,nil];
    size =[self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:tdic context:nil].size;
    return size;
}

/** 判断字符串是否为空 */

+ (BOOL)isBlankString:string{
    
    if ([string isEqualToString:@""])
    {
        return YES;
    }
    
    if (string == nil)
    {
        return YES;
    }
    
    if (string == NULL)
    {
        return YES;
    }
    
    if ([string isKindOfClass:[NSNull class]])
    {
        return YES;
    }
    
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0)
    {
        return YES;
    }
    return NO;
}

@end
