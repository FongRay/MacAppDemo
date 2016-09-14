//
//  BBMenuItemView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBMenuItemView.h"
#import "BBImageButton.h"
#import "BBTextButton.h"
#import "NSColor+RGBValue.h"

@interface BBMenuItemView ()

@property (nonatomic, strong) NSTrackingArea *trackingArea;

@end

@implementation BBMenuItemView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    // Handle the hightlight
    if ([[self enclosingMenuItem] isHighlighted]) {
        [[NSColor colorWithRGBInt:0xe5e9ef] set];
    } else {
        [[NSColor clearColor] set];
    }
    NSRectFill(dirtyRect);
}

- (void)mouseDown:(NSEvent *)theEvent {
    // check if clicked on delBtn
    NSPoint pos = [self convertPoint:[theEvent locationInWindow] fromView:nil];
    BBImageButton *delBtn;
    for (NSView *sub in [self subviews]) {
        if ([sub isKindOfClass:[BBImageButton class]]) {
            delBtn = (BBImageButton *)sub;
            break;
        }
    }
    NSRect delRect = [delBtn frame];
    id _controller = [delBtn target];
    if (NSPointInRect(pos, delRect) && _controller) {
        [[delBtn target] performSelectorOnMainThread:[delBtn action] withObject:self waitUntilDone:NO];
        return;
    }
    
    // else select menu item
    NSMenuItem *actualMenuItem = [self enclosingMenuItem];
    [NSApp sendAction:[actualMenuItem action] to:[actualMenuItem target] from:actualMenuItem];
    // dismiss the menu being tracked
    NSMenu *menu = [actualMenuItem menu];
    [menu cancelTracking];
    [self setNeedsDisplay:YES];
}

- (NSView *)hitTest:(NSPoint)aPoint {
    return self;
}

@end
