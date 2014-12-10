//
//  UIColor+Extension.m
//  DPAppProject
//
//  Created by lipeng on 14/12/10.
//  Copyright (c) 2014年 DPAppProject. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (id) colorWithHex:(unsigned int)hex
{
    return [UIColor colorWithHex:hex alpha:1];
}

+ (id) colorWithHex:(unsigned int)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hex & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hex & 0xFF)) / 255.0
                           alpha:alpha];
}

@end
