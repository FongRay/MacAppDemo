//
//  BBMenuItemVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/14.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBMenuItemVC.h"
#import "BBMenuItemView.h"
#import "BBTextButton.h"
#import "BBImageButton.h"
#import "NSColor+RGBValue.h"

@interface BBMenuItemVC ()

@property (nonatomic, strong) BBMenuItemView *menuItemView;

@property (nonatomic, strong) NSString *itemTitle;

@property (nonatomic, strong) BBTextButton *textBtn;

@property (nonatomic, strong) BBImageButton *delBtn;

- (IBAction)delItem:(id)sender;

@end

@implementation BBMenuItemVC

- (instancetype)initWithFrame:(NSRect)frame andTitle:(NSString *)title {
    self = [super init];
    _menuItemView = [[BBMenuItemView alloc] initWithFrame:frame];
    _itemTitle = title;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    _textBtn = [[BBTextButton alloc] initWithFrame:NSMakeRect(17, 9, 265, 16)];
    [_textBtn setTitle:_itemTitle withNormalColor:[NSColor colorWithRGBInt:0x222222] hoverColor:[NSColor colorWithRGBInt:0x222222]];
    [self.view addSubview: _textBtn];
    
    _delBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(NSWidth(self.view.bounds) - 25, 12, 10, 10)];
    [_delBtn setImage:@"icon_close2.png" withHover:@"icon_close2_s.png"];
    [_delBtn setAction:@selector(delItem:)];
    [_delBtn setTarget:self];
    [self.view addSubview:_delBtn];
}

- (void)loadView {
    self.view = _menuItemView;
}

- (void)delItem:(id)sender {
    NSMenu * menu = [[self.view enclosingMenuItem] menu];
    [menu removeItem:[self.view enclosingMenuItem]];
    [menu cancelTracking];
}

@end
