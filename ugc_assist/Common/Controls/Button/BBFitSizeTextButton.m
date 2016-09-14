//
//  BBFitSizeTextButton.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBFitSizeTextButton.h"

@interface BBFitSizeTextButton ()

@property (nonatomic) CGFloat maxWidth;

- (void)fitIt;

@end

@implementation BBFitSizeTextButton

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    [self setLineBreakMode:NSLineBreakByTruncatingTail];
    _maxWidth = NSWidth(frameRect);
    return self;
}

- (void)setTitle:(NSString *)title withNormalColor:(NSColor *)normal hoverColor:(NSColor *)hover {
    [super setTitle:title withNormalColor:normal hoverColor:hover];
    [self fitIt];
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    [super setMouseExited];
    [self fitIt];
}

- (void)fitIt {
    [self sizeToFit];
    NSSize newSize = self.frame.size;
    if (newSize.width > _maxWidth) {
        [self setFrameSize:NSMakeSize(_maxWidth, newSize.height)];
    }
}
@end
