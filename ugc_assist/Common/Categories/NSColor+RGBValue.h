//
//  NSColor+NSColor_RGBValue.h
//  ugc_assist
//
//  Created by Ray Fong on 16/9/7.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (NSColor_RGBValue)

+ (NSColor *)colorWithRGB:(int)red
                   green:(int)green
                    blue:(int)blue;

+ (NSColor *)colorWithRGBA:(int)red
                    green:(int)green
                     blue:(int)blue
                    alpha:(CGFloat)alpha;

+ (NSColor *)colorWithRGBInt:(uint32_t)rgb;

@end
