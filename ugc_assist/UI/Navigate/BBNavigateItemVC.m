//
//  BBNavigateItemVC.m
//  ugc_assist
//
//  Created by gao bo on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBNavigateItemVC.h"
#import "BBTextButton.h"
#import "BBImageButton.h"
#import "BBNavigateItem.h"
#import "NSColor+RGBValue.h"

@interface BBNavigateItemVC ()

@property (nonatomic, strong) BBNavigateItem *navigateItem;

@property (nonatomic, strong) BBTextButton *textButton;

@property (nonatomic, strong) BBImageButton *imageButton;

@property (nonatomic, strong) NSString *titleValue;

@property (nonatomic, strong) NSString *normalIcon;

@property (nonatomic, strong) NSString *hoverIcon;

@property (nonatomic) NSRect viewRect;

@property (nonatomic, strong) NSColor *bkColor;

@end

@implementation BBNavigateItemVC

-(void)setImageAndTitle:(NSString *)title withNormalIcon:(NSString *)normal hoverIcon:(NSString *)hover viewRect:(NSRect)rect {
    _titleValue = title;
    _normalIcon = normal;
    _hoverIcon = hover;
    _viewRect = rect;
}

-(void)setBkColor:(NSColor *)color {
    _bkColor = color;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    _imageButton = [[BBImageButton alloc] initWithFrame:NSMakeRect(0, 0, 65, 49)];
    [_imageButton setImage:_normalIcon withHover:_hoverIcon];
    [self.view addSubview:_imageButton];
    
    _textButton = [[BBTextButton alloc] initWithFrame:NSMakeRect(46, 0, 122, 49)];
    [_textButton setFontSize:14];
    [_textButton setTitle:_titleValue withNormalColor:[NSColor colorWithRGBInt:0x6d757a] hoverColor:[NSColor colorWithRGBInt:0xf25d8e]];
    [self.view addSubview:_textButton];
}

- (void)loadView {
    _navigateItem = [[BBNavigateItem alloc] initWithFrame:_viewRect];
    [_navigateItem setBkColor:_bkColor];
    self.view = _navigateItem;
}

@end
