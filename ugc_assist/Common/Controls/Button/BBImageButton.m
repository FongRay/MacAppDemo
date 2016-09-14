//
//  BBImageButton.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBImageButton.h"

@interface BBButtonCell : NSButtonCell

- (NSRect)drawTitle:(NSAttributedString *)title withFrame:(NSRect)frame inView:(NSView *)controlView;

@end

@implementation BBButtonCell

- (NSRect)drawTitle:(NSAttributedString *)title withFrame:(NSRect)frame inView:(NSView *)controlView {
    if (![self isEnabled]) {
        return [super drawTitle:[self attributedTitle] withFrame:frame inView:controlView];
    }
    return [super drawTitle:title withFrame:frame inView:controlView];
}

@end

@interface BBImageButton ()

@property (nonatomic, strong) NSImage *normalImage;

@property (nonatomic, strong) NSImage *hoverImage;

@property (nonatomic, strong) NSImage *disabledImage;

@property (nonatomic, strong) NSColor *normalColor;

@property (nonatomic, strong) NSColor *hoverColor;

@property (nonatomic, strong) NSTrackingArea *trackingArea;

- (void)setTextColor:(NSColor *)color;

@end

@implementation BBImageButton


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    BBButtonCell *cell = [[BBButtonCell alloc] init];
    [self setCell:cell];
    [self setButtonType:NSMomentaryChangeButton];
    [self setBezelStyle:NSRoundedDisclosureBezelStyle];
    [self setBordered:NO];
    [[self cell] setImageDimsWhenDisabled:NO];
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
    if ([self isEnabled]) {
        self.image = _hoverImage;
        if (_hoverColor != nil) {
            [self setTextColor:_hoverColor];
        }
    }
}

- (void)mouseExited:(NSEvent *)theEvent {
    [super mouseExited:theEvent];
    [self setMouseExited];
}

- (void)setMouseExited {
    if ([self isEnabled]) {
        self.image = _normalImage;
        if (_normalColor != nil) {
            [self setTextColor:_normalColor];
        }
    }
}

- (void)setImage:(NSString *)normal withHover:(NSString *)hover {
    _normalImage = [NSImage imageNamed:normal];
    _hoverImage = [NSImage imageNamed:hover];
    self.image = _normalImage;
    self.alternateImage = _hoverImage;
}

- (void)setImage:(NSString *)normal
       withHover:(NSString *)hover
    withDisabled:(NSString *)disabled {
    [self setImage:normal withHover:hover];
    _disabledImage = [NSImage imageNamed:disabled];
}

- (void)setTitle:(NSString *)title
 withNormalColor:(NSColor *)normal
      hoverColor:(NSColor *)hover {
    [super setTitle:title];
    _normalColor = normal;
    _hoverColor = hover;
    [self setTextColor:normal];
}

- (void)setTextColor:(NSColor *)color {
    NSMutableAttributedString *textAttr = [[NSMutableAttributedString alloc] initWithAttributedString:[self attributedTitle]];
    NSRange titleRange = NSMakeRange(0, [self.title length]);
    [textAttr addAttribute:NSForegroundColorAttributeName value:color range:titleRange];
    [self setAttributedTitle:textAttr];
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    if (!enabled) {
        self.image = _disabledImage;
    }
}

@end
