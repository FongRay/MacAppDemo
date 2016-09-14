//
//  BBNavigateItemVC.h
//  ugc_assist
//
//  Created by gao bo on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BBNavigateItemVC : NSViewController

-(void)setImageAndTitle:(NSString*)title withNormalIcon:(NSString*)normal hoverIcon:(NSString*)hover viewRect:(NSRect)rect;

-(void)setBkColor:(NSColor*)color;

@end
