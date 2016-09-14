//
//  BBNavigateView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/7.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBNavigateView.h"
#import "NSColor+RGBValue.h"

@implementation BBNavigateView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    NSBezierPath *path = [NSBezierPath bezierPath];
    NSRect rect = [self bounds];
    [path moveToPoint:NSMakePoint(rect.size.width - 1, 0)];
    [path lineToPoint:NSMakePoint(rect.size.width - 1, rect.size.height)];
    
    [[NSColor colorWithRGBInt:0xdddfe4] set];
    [path setLineWidth:1.0];
    [path stroke];
}

- (BOOL)mouseDownCanMoveWindow {
    return NO;
}

- (BOOL)isFlipped {
    return YES;
}

@end
