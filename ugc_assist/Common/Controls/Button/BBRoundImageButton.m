//
//  BBRoundImageButton.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBRoundImageButton.h"

@interface NSImage (ScaleToRound)

- (NSImage *)getRoundImage:(CGFloat)radius;

@end

@implementation NSImage (ScaleToRound)

- (NSImage *)getRoundImage:(CGFloat)radius {
    NSSize roundSize = NSMakeSize(radius, radius);
    NSImage *roundImage = [[NSImage alloc] initWithSize:roundSize];
    
    [roundImage lockFocus];
    [self setSize:roundSize];
    [[NSGraphicsContext currentContext] setImageInterpolation:NSImageInterpolationHigh];
    NSRect imageFrame = NSMakeRect(0, 0, radius, radius);
    NSBezierPath *clipPath = [NSBezierPath bezierPathWithRoundedRect:imageFrame xRadius:radius yRadius:radius];
    [clipPath setWindingRule:NSEvenOddWindingRule];
    [clipPath addClip];
    [self drawAtPoint:NSZeroPoint fromRect:imageFrame operation:NSCompositeSourceOver fraction:1];
    [roundImage unlockFocus];
    
    return roundImage;
}

@end

@interface BBRoundImageButton ()

@property (nonatomic) CGFloat radius;

@end

@implementation BBRoundImageButton

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (frameRect.size.width != frameRect.size.height) {
        NSLog(@"Not a round button!");
    }
    _radius = frameRect.size.width;
    [self setButtonType:NSMomentaryChangeButton];
    [self setBezelStyle:NSRoundedDisclosureBezelStyle];
    [self setBordered:NO];
    [self setImagePosition:NSImageOnly];
    return self;
}

- (void)setImage:(NSImage *)image {
    NSImage *roundImage = [image getRoundImage:_radius];
    [super setImage:roundImage];
    [super setAlternateImage:roundImage];
}

@end
