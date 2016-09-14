//
//  BBFunctionVC.m
//  ugc_assist
//
//  Created by gao bo on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBFunctionVC.h"
#import "BBFunctionView.h"
#import "BBImageTextButton.h"
#import "BBTextButton.h"
#import "BBLabel.h"
#import "NSColor+RGBValue.h"

#define FUNC_BTN_NORMAL_COLOR 0x6d757a
#define FUNC_BTN_HOVER_COLOR 0x6d757a
#define FUNC_BTN_DISABLE_COLOR 0xe4e5e7

@interface BBFunctionVC ()

@property (nonatomic, strong) BBFunctionView *functionView;

@property (nonatomic, strong) BBImageTextButton *addButton;

@property (nonatomic, strong) BBImageTextButton *startButton;

@property (nonatomic, strong) BBImageTextButton *pauseButton;

@property (nonatomic, strong) BBImageTextButton *refreshButton;

@property (nonatomic, strong) BBImageTextButton *backButton;

@property (nonatomic, strong) BBTextButton *titleButton;

@property (nonatomic, strong) BBLabel *currentPathLabel;

@end

@implementation BBFunctionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    //_createButtonVC = [[BBImageTextButtonVC alloc] initWithFrame:NSMakeRect(20, 11, 90, 30)];
    _addButton = [[BBImageTextButton alloc] initWithFrame:NSMakeRect(20, 11, 90, 30)];
    [_addButton setImage:@"btn_add_normal.png" withHover:@"btn_add_hover.png" disable:@"btn_add_disabled.png"];
    [_addButton setTitle:@"新建稿件" withNormalColor:[NSColor colorWithRGBInt:FUNC_BTN_NORMAL_COLOR] hoverColor:[NSColor colorWithRGBInt:FUNC_BTN_HOVER_COLOR] disableColor:[NSColor colorWithRGBInt:FUNC_BTN_DISABLE_COLOR]];
    [self.view addSubview:_addButton];
    
    _startButton = [[BBImageTextButton alloc] initWithFrame:NSMakeRect(120, 11, 90, 30)];
    [_startButton setImage:@"btn_start_normal.png" withHover:@"btn_start_hover.png" disable:@"btn_start_disabled.png"];
    [_startButton setTitle:@"全部开始" withNormalColor:[NSColor colorWithRGBInt:FUNC_BTN_NORMAL_COLOR] hoverColor:[NSColor colorWithRGBInt:FUNC_BTN_HOVER_COLOR] disableColor:[NSColor colorWithRGBInt:FUNC_BTN_DISABLE_COLOR]];
    [self.view addSubview:_startButton];
    
    _pauseButton = [[BBImageTextButton alloc] initWithFrame:NSMakeRect(220, 11, 90, 30)];
    [_pauseButton setImage:@"btn_pause_normal.png" withHover:@"btn_pause_hover.png" disable:@"btn_pause_disabled.png"];
    [_pauseButton setTitle:@"全部暂停" withNormalColor:[NSColor colorWithRGBInt:FUNC_BTN_NORMAL_COLOR] hoverColor:[NSColor colorWithRGBInt:FUNC_BTN_HOVER_COLOR] disableColor:[NSColor colorWithRGBInt:FUNC_BTN_DISABLE_COLOR]];
    [self.view addSubview:_pauseButton];
    
    _refreshButton = [[BBImageTextButton alloc] initWithFrame:NSMakeRect(760, 11, 70, 30)];
    [_refreshButton setImage:@"btn_refresh_normal.png" withHover:@"btn_refresh_hover.png" disable:@"btn_refresh_disabled.png"];
    [_refreshButton setTitle:@"刷新" withNormalColor:[NSColor colorWithRGBInt:FUNC_BTN_NORMAL_COLOR] hoverColor:[NSColor colorWithRGBInt:FUNC_BTN_HOVER_COLOR] disableColor:[NSColor colorWithRGBInt:FUNC_BTN_DISABLE_COLOR]];
    [self.view addSubview:_refreshButton];
    [_refreshButton setHidden:TRUE];
    
    _backButton = [[BBImageTextButton alloc] initWithFrame:NSMakeRect(20, 11, 30, 30)];
    [_backButton setImage:@"btn_back_normal.png" withHover:@"btn_back_hover.png" disable:@"btn_back_disabled.png"];
    [self.view addSubview:_backButton];
    [_backButton setHidden:TRUE];
    
    _titleButton = [[BBTextButton alloc] initWithFrame:NSMakeRect(65, 18, 50, 14)];
    [_titleButton setTitle:@"已投稿 >" withNormalColor:[NSColor colorWithRGBInt:0x99a2aa] hoverColor:[NSColor colorWithRGBInt:0xf25d8e]];
    [self.view addSubview:_titleButton];
    [_titleButton setHidden:TRUE];
    
    _currentPathLabel = [[BBLabel alloc] initWithFrame:NSMakeRect(118, 19, 50, 14)];
    [_currentPathLabel setText:@"稿件详情"];
    [_currentPathLabel setTextColor:[NSColor colorWithRGBInt:0x222222]];
    [_currentPathLabel setBackgroundColor:[NSColor colorWithRGBInt:0xffffff]];
    [self.view addSubview:_currentPathLabel];
    [_currentPathLabel setHidden:TRUE];
    
}

- (void)loadView {
    _functionView = [[BBFunctionView alloc] initWithFrame:NSMakeRect(0, 0, 850, 50)];
    self.view = _functionView;
}

@end
