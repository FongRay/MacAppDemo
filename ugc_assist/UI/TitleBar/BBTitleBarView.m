//
//  BBTitleBarView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/7.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBTitleBarView.h"
#import "NSColor+RGBValue.h"

@implementation BBTitleBarView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSColor clearColor] set];
    NSRectFill(dirtyRect);
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    NSRect rect = [self bounds];
    [path moveToPoint:NSMakePoint(0, 15)];
    [path curveToPoint:NSMakePoint(15, 0)
         controlPoint1:NSMakePoint(0, 0)
         controlPoint2:NSMakePoint(0, 0)];
    [path lineToPoint:NSMakePoint(rect.size.width - 15, 0)];
    [path curveToPoint:NSMakePoint(rect.size.width, 15)
         controlPoint1:NSMakePoint(rect.size.width, 0)
         controlPoint2:NSMakePoint(rect.size.width, 0)];
    [path lineToPoint:NSMakePoint(rect.size.width, rect.size.height)];
    [path lineToPoint:NSMakePoint(0, rect.size.height)];
    [path lineToPoint:NSMakePoint(0, 15)];
        
    [[NSColor colorWithRGBInt:0xff709f] set];
    [path fill];
    
    [path moveToPoint:NSMakePoint(rect.size.width - 78, 17)];
    [path lineToPoint:NSMakePoint(rect.size.width - 78, 43)];
    [[NSColor colorWithRGBInt:0xff89b0] set];
    [path stroke];
}

- (BOOL)isFlipped {
    return YES;
}

- (BOOL)mouseDownCanMoveWindow {
    return YES;
}

@end
