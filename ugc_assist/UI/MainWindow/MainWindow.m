//
//  MainWindow.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/6.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "MainWindow.h"

@implementation MainWindow

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    if (self != nil) {
        [self setOpaque:NO];
        [self setStyleMask:NSBorderlessWindowMask];
        [self setBackgroundColor:[NSColor clearColor]];
        [self setMovableByWindowBackground:YES];
    }
    return self;
}

- (BOOL)canBecomeKeyWindow {
    return YES;
}

@end
