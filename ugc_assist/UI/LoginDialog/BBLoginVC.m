//
//  BBLoginVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBLoginVC.h"
#import "BBLoginView.h"
#import "BBComboBoxVC.h"
#import "BBImageButton.h"
#import "NSColor+RGBValue.h"

@interface BBLoginVC ()

@property (nonatomic, strong) BBLoginView *loginView;

@property (nonatomic, strong) BBImageButton *closeBtn;

@property (nonatomic, strong) BBComboBoxVC *accoutCmb;

@property (nonatomic, strong) BBImageButton *loginBtn;

- (IBAction)closeBtnClicked:(id)sender;

- (IBAction)loginBtnClicked:(id)sender;

@end

@implementation BBLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    NSRect rect = [self.view bounds];
    _closeBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(rect.size.width - 31, 15, 16, 16)];
    [_closeBtn setImage:@"icon_close.png" withHover:@"icon_close_s.png"];
    [_closeBtn setTarget:self];
    [_closeBtn setAction:@selector(closeBtnClicked:)];
    
    _accoutCmb = [[BBComboBoxVC alloc] init];
    [_accoutCmb setFrame:NSMakeRect(40, 207, 342, 40)];
    [self addChildViewController:_accoutCmb];
    [self.view addSubview:_accoutCmb.view];
    
    [self.view addSubview:_closeBtn];
    _loginBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(40, 329, 342, 40)];
    [_loginBtn setFont:[NSFont systemFontOfSize:14.0]];
    [_loginBtn setImage:@"btn_login.png" withHover:@"btn_login_s.png" withDisabled:@"btn_login_d.png"];
    [_loginBtn setTitle:@"登录" withNormalColor:[NSColor colorWithRGBInt:0xffffff]
             hoverColor:[NSColor colorWithRGBInt:0xffffff]];
    [_loginBtn setAction:@selector(loginBtnClicked:)];
    [self.view addSubview:_loginBtn];
}

- (void)loadView {
    _loginView = [[BBLoginView alloc] initWithFrame:NSMakeRect(0, 0, 422, 409)];
    self.view = _loginView;
}

- (void)closeBtnClicked:(id)sender {
    [NSApp stopModalWithCode:NSModalResponseCancel];
}

- (void)loginBtnClicked:(id)sender {
    [NSApp stopModalWithCode:NSModalResponseOK];
}

@end
