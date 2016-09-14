//
//  BBNavigateItem.m
//  ugc_assist
//
//  Created by gao bo on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBNavigateItem.h"
#import "NSColor+RGBValue.h"

@interface NSView (MouseEvent)

- (void)setMouseEntered;

- (void)setMouseExited;

@end

@implementation BBNavigateItem

@synthesize bkColor = _bkColor;

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // Drawing code here.
    [_bkColor setFill];
    NSRectFill(dirtyRect);
}

- (void)mouseEntered:(NSEvent *)theEvent {
    _bkColor = [NSColor colorWithRGBInt:0xffeef3];
    [super mouseEntered:theEvent];
    for (NSView *sub in [self subviews]) {
        [sub setMouseEntered];
    }
}

- (void)mouseExited:(NSEvent *)theEvent {
    _bkColor = [NSColor colorWithRGBInt:0xffffff];
    [super mouseExited:theEvent];
    for (NSView *sub in [self subviews]) {
        [sub setMouseExited];
    }
}

- (BOOL)isFlipped {
    return YES;
}

@end
