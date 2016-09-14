//
//  BBTitleBarVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/6.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBTitleBarVC.h"
#import "BBImageButton.h"
#import "BBTextButton.h"
#import "BBNoticeVC.h"
#import "BBUserInfoVC.h"
#import "NSColor+RGBValue.h"

@interface BBTitleBarVC ()

@property (nonatomic, strong) NSImageView *logo;

@property (nonatomic, strong) BBImageButton *closeBtn;

@property (nonatomic, strong) BBImageButton *minBtn;

@property (nonatomic, strong) BBImageButton *settingBtn;

@property (nonatomic, strong) BBTextButton *feedbackBtn;

@property (nonatomic, strong) BBNoticeVC *noticeVC;

@property (nonatomic, strong) BBUserInfoVC *userInfoVC;

- (IBAction)closeBtnClicked:(id)sender;

- (IBAction)minBtnClicked:(id)sender;

- (IBAction)settingBtnClicked:(id)sender;

@end

@implementation BBTitleBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSRect rect = [self.view bounds];
    // Do view setup here.
    _logo = [[NSImageView alloc] initWithFrame:NSMakeRect(20, 15, 140, 28)];
    [_logo setImage:[NSImage imageNamed:@"logo.png"]];
    [_logo setTarget:self];
    [self.view addSubview:_logo];
    
    _closeBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(rect.size.width - 34, 22, 16, 16)];
    [_closeBtn setImage:@"icon_close.png" withHover:@"icon_close_s.png"];
    [_closeBtn setTarget:self];
    [_closeBtn setAction:@selector(closeBtnClicked:)];
    [self.view addSubview:_closeBtn];
    
    _minBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(rect.size.width - 63, 22, 16, 16)];
    [_minBtn setImage:@"icon_minimize.png" withHover:@"icon_minimize_s.png"];
    [_minBtn setTarget:self];
    [_minBtn setAction:@selector(minBtnClicked:)];
    [self.view addSubview:_minBtn];
    
    _settingBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(rect.size.width - 109, 22, 16, 16)];
    [_settingBtn setImage:@"icon_setting.png" withHover:@"icon_setting_s.png"];
    [_settingBtn setTarget:self];
    [_settingBtn setAction:@selector(settingBtnClicked:)];
    [self.view addSubview:_settingBtn];
    
    _feedbackBtn = [[BBTextButton alloc] initWithFrame:NSMakeRect(rect.size.width - 149, 21, 28, 12)];
    [_feedbackBtn setTitle:@"反馈" withNormalColor:[NSColor colorWithRGBInt:0xffe9f0]
                hoverColor:[NSColor colorWithRGBInt:0xffffff]];
    [_feedbackBtn setTarget:self];
    [self.view addSubview:_feedbackBtn];
    
    _noticeVC = [[BBNoticeVC alloc] init];
    [self addChildViewController:_noticeVC];
    [self.view addSubview:_noticeVC.view];
    
    _userInfoVC = [[BBUserInfoVC alloc] init];
    [_userInfoVC setSuperViewSize:rect.size];
    [self addChildViewController:_userInfoVC];
    [self.view addSubview:_userInfoVC.view];

}

- (void)closeBtnClicked:(id)sender {
    [self.view.window close];
}

- (void)minBtnClicked:(id)sender {
    [self.view.window miniaturize:self];
}

- (void)settingBtnClicked:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"确定"];
    [alert addButtonWithTitle:@"取消"];
    [alert setMessageText:@"设置对话框"];
    [alert setInformativeText:@"需要自绘实现"];
    [alert setAlertStyle:NSInformationalAlertStyle];
    [alert beginSheetModalForWindow:[self.view window] completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"确定");
        } else if (returnCode == NSAlertSecondButtonReturn) {
            NSLog(@"取消");
        }
    }];
}

@end
