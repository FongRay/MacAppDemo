//
//  MainWindowView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/6.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "MainWindowView.h"

@implementation MainWindowView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSColor clearColor] set];
    NSRectFill(dirtyRect);
    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:dirtyRect xRadius:5 yRadius:5];
    [[NSColor whiteColor] set];
    [path fill];
}

@end
