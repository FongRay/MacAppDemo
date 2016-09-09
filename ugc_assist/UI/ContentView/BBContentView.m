//
//  BBContentView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/7.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBContentView.h"
#import "NSColor+RGBValue.h"

@implementation BBContentView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    NSBezierPath *path = [NSBezierPath bezierPath];
    NSRect rect = [self bounds];
    [path moveToPoint:NSMakePoint(0, 50)];
    [path lineToPoint:NSMakePoint(rect.size.width, 50)];
    [[NSColor colorWithRGBInt:0xdddfe4] set];
    [path stroke];
    
    [path moveToPoint:NSMakePoint(0, 51)];
    [path lineToPoint:NSMakePoint(rect.size.width, 51)];
    [path lineToPoint:NSMakePoint(rect.size.width, rect.size.height - 15)];
    [path curveToPoint:NSMakePoint(rect.size.width - 15, rect.size.height)
         controlPoint1:NSMakePoint(rect.size.width, rect.size.height)
         controlPoint2:NSMakePoint(rect.size.width, rect.size.height)];
    [path lineToPoint:NSMakePoint(0, rect.size.height)];
    [path lineToPoint:NSMakePoint(0, 51)];
    [[NSColor colorWithRGBInt:0xf1f3f7] set];
    [path appendBezierPathWithRect:NSMakeRect(-1, -1, rect.size.width, 1)];
    [path fill];
}

- (BOOL)isFlipped {
    return YES;
}

- (BOOL)mouseDownCanMoveWindow {
    return NO;
}

@end
