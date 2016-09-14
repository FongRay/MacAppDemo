//
//  BBComboBox.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBComboBox.h"
#import "NSColor+RGBValue.h"

@implementation BBComboBox

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSColor whiteColor] set];
    NSRectFill(dirtyRect);
    if (NSEqualRects(self.bounds, dirtyRect)) {
        NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:dirtyRect xRadius:5 yRadius:5];
        [[NSColor colorWithRGBInt:0xccd0d7] set];
        [path stroke];
    }
}

- (BOOL)isFlipped {
    return YES;
}

@end
