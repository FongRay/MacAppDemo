//
//  BBImageButton.h
//  ugc_assist
//
//  Created by Ray Fong on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BBImageButton : NSButton

- (void)setImage:(NSString *)normal
       withHover:(NSString *)hover;

- (void)setImage:(NSString *)normal
       withHover:(NSString *)hover
    withDisabled:(NSString *)disabled;

- (void)setTitle:(NSString *)title
       withNormalColor:(NSColor *)normal
        hoverColor:(NSColor *)hover;

- (void)setMouseEntered;

- (void)setMouseExited;

@end
