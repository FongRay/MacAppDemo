//
//  BBLoginDialog.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBLoginDialog.h"

@interface BBLoginDialog ()

@property (readwrite) NSPoint origin;

@end

@implementation BBLoginDialog

- (instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    if (self != nil) {
        [self setOpaque:NO];
        [self setStyleMask:NSBorderlessWindowMask];
        [self setBackgroundColor:[NSColor clearColor]];
        [self setMovableByWindowBackground:YES];
        [self setHasShadow:YES];
    }
    return self;
}

- (BOOL)preventsApplicationTerminationWhenModal {
    return NO;
}

- (void)setFrame:(NSRect)frame {
    CGFloat x = frame.origin.x + (NSWidth(frame) - NSWidth(self.frame)) / 2;
    CGFloat y = frame.origin.y + (NSHeight(frame) - NSHeight(self.frame)) / 2;
    _origin = NSMakePoint(x, y);
}

- (void)center {
    [self setFrameOrigin:_origin];
}

- (BOOL)canBecomeKeyWindow {
    return YES;
}

@end
