//
//  BBNoticeVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBNoticeVC.h"
#import "BBNoticeView.h"
#import "BBImageButton.h"
#import "BBFitSizeTextButton.h"
#import "NSColor+RGBValue.h"

@interface BBNoticeVC ()

@property (nonatomic, strong) BBNoticeView *noticeView;

@property (nonatomic, strong) BBFitSizeTextButton *noticeText;

- (IBAction)noticeBtnClicked:(id)sender;

@end

@implementation BBNoticeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    BBImageButton *noticeIcon = [[BBImageButton alloc]
                                 initWithFrame:NSMakeRect(0, 1, 16, 16)];
    [noticeIcon setImage:@"icon_notice.png" withHover:@"icon_notice_s.png"];
    [self.view addSubview:noticeIcon];
    
    _noticeText = [[BBFitSizeTextButton alloc] initWithFrame:NSMakeRect(22, 0, 378, 12)];
    [_noticeText setTitle:@"哔哩哔哩付费会员首次开通低到1元快来购买！"
          withNormalColor:[NSColor colorWithRGBInt:0xffe9f0]
               hoverColor:[NSColor colorWithRGBInt:0xffffff]];
    [_noticeText setTarget:self];
    [_noticeText setAction:@selector(noticeBtnClicked:)];
    [self.view addSubview:_noticeText];
}

- (void)loadView {
    _noticeView = [[BBNoticeView alloc] initWithFrame:NSMakeRect(190, 21, 400, 16)];
    self.view = _noticeView;
}

- (void)noticeBtnClicked:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://www.bilibili.com/"]];
}

@end
