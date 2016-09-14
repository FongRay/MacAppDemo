//
//  BBImageTextButton.h
//  ugc_assist
//
//  Created by gao bo on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BBImageTextButton : NSButton

@property (nonatomic) int fontSize;

- (void)setImage:(NSString *)normal
       withHover:(NSString *)hover
         disable:(NSString *)disable;

- (void)setTitle:(NSString *)title
 withNormalColor:(NSColor *)normal
      hoverColor:(NSColor *)hover
    disableColor:(NSColor *)disable;

@end
