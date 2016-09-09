//
//  BBImageButton.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBImageButton.h"

@interface BBImageButton ()

@property (nonatomic, strong) NSImage *normalImage;

@property (nonatomic, strong) NSImage *hoverImage;

@property (nonatomic, strong) NSTrackingArea *trackingArea;

@end

@implementation BBImageButton


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    [self setButtonType:NSMomentaryChangeButton];
    [self setBezelStyle:NSRoundedDisclosureBezelStyle];
    [self setBordered:NO];
    [self setImagePosition:NSImageOnly];
    return self;
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

- (void)mouseEntered:(NSEvent *)theEvent {
    [super mouseEntered:theEvent];
    [self setMouseEntered];
}

- (void)setMouseEntered {
    self.image = _hoverImage;
}

- (void)mouseExited:(NSEvent *)theEvent {
    [super mouseExited:theEvent];
    [self setMouseExited];
}

- (void)setMouseExited {
    self.image = _normalImage;
}

- (void)setImage:(NSString *)normal withHover:(NSString *)hover {
    _normalImage = [NSImage imageNamed:normal];
    _hoverImage = [NSImage imageNamed:hover];
    self.image = _normalImage;
    self.alternateImage = _hoverImage;
}

@end
