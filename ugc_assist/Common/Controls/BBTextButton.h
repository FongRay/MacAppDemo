//
//  BBTextButton.h
//  ugc_assist
//
//  Created by Ray Fong on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BBTextButton : NSButton

- (void)setTitle:(NSString *)title
       withNormalColor:(NSColor *)normal
        hoverColor:(NSColor *)hover;

- (void)setMouseEntered;

- (void)setMouseExited;

@end
