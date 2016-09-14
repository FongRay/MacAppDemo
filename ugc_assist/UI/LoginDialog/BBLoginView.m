//
//  BBLoginView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBLoginView.h"

@implementation BBLoginView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSColor clearColor] set];
    NSRectFill(dirtyRect);
    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:dirtyRect xRadius:10 yRadius:10];
    [[NSColor whiteColor] set];
    [path fill];
    
    NSImage *head = [NSImage imageNamed:@"bg_login_head.png"];
    [head drawInRect:NSMakeRect(0, 0, 422, 182)];
}

- (BOOL)isFlipped {
    return YES;
}

@end
