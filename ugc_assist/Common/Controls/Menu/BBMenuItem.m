//
//  BBMenu.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBMenuItem.h"
#import "BBMenuItemVC.h"

@interface BBMenuItem ()

@property (nonatomic, strong) NSString *itemTitle;

@property (nonatomic, strong) BBMenuItemVC *menuItemVC;

@end

@implementation BBMenuItem

- (instancetype)initWithTitle:(NSString *)aString action:(SEL)aSelector keyEquivalent:(NSString *)charCode {
    self = [super initWithTitle:aString action:aSelector keyEquivalent:charCode];
    _itemTitle = aString;
    return self;
}

- (void)setFrame:(NSRect)frame {
    _menuItemVC = [[BBMenuItemVC alloc] initWithFrame:frame andTitle:_itemTitle];
    [self setView:_menuItemVC.view];
}

@end
