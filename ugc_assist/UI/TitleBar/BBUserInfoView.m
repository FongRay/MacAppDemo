//
//  BBUserInfoView.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBUserInfoView.h"
#import "BBFitSizeTextButton.h"

@interface BBUserInfoView ()

@property (nonatomic, strong) NSTrackingArea *trackingArea;

@end

@implementation BBUserInfoView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (BOOL)isFlipped {
    return YES;
}

- (void)updateTrackingAreas {
    if (self.trackingArea != nil) {
        [self removeTrackingArea:self.trackingArea];
    }
    int ops = (NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways);
    self.trackingArea = [[NSTrackingArea alloc] initWithRect:[self bounds]
                                                     options:ops
                                                       owner:self
                                                    userInfo:nil];
    [self addTrackingArea:self.trackingArea];
}

- (NSView *)hitTest:(NSPoint)aPoint {
    NSView *hitView = [super hitTest:aPoint];
    if (_delegate && [_delegate respondsToSelector:@selector(IsLoggedIn)]) {
        if ([_delegate IsLoggedIn] == NO) {
            return [hitView isKindOfClass:[BBFitSizeTextButton class]] ? hitView : nil;
        }
    }
    if (hitView == self || [hitView superview] == self) {
        return self;
    }
    return nil;
}

@end
