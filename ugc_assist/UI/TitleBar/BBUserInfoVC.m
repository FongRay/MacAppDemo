//
//  BBUserInfoVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBUserInfoVC.h"
#import "BBUserInfoView.h"
#import "BBFitSizeTextButton.h"
#import "BBImageButton.h"
#import "BBRoundImageButton.h"
#import "NSColor+RGBValue.h"

@interface BBUserInfoVC ()

@property (nonatomic, strong) BBUserInfoView *userInfoView;

@property (nonatomic, strong) BBRoundImageButton *userPhoto;

@property (nonatomic, strong) BBFitSizeTextButton *userName;

@property (nonatomic, strong) BBImageButton *iconMore;

@end

@implementation BBUserInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    _userPhoto = [[BBRoundImageButton alloc] initWithFrame:NSMakeRect(0, 0, 24, 24)];
    [_userPhoto setImage:[NSImage imageNamed:@"user_photo_default.png"]];
    [self.view addSubview:_userPhoto];
    
    _userName = [[BBFitSizeTextButton alloc] initWithFrame:NSMakeRect(30, 3, 77, 14)];
    [_userName setTitle:@"请登录" withNormalColor:[NSColor colorWithRGBInt:0xffe9f0]
               hoverColor:[NSColor colorWithRGBInt:0xffffff]];
    //[_userNameBtn setTarget:self];
    [self.view addSubview:_userName];
    
    CGFloat x = _userName.frame.origin.x + _userName.frame.size.width;
    _iconMore = [[BBImageButton alloc] initWithFrame:NSMakeRect(x + 4, 9, 8, 5)];
    [_iconMore setImage:@"icon_more.png" withHover:@"icon_more_s.png"];
    [self.view addSubview:_iconMore];
}

- (void)loadView {
    _userInfoView = [[BBUserInfoView alloc] initWithFrame:NSMakeRect(_superViewSize.width - 294, 18, 117, 24)];
    self.view = _userInfoView;
}

- (void)test {
    [_userName setTitle:@"这是一个超长的名字试一下长度会不会自适应"];
    CGFloat x = _userName.frame.origin.x + _userName.frame.size.width;
    NSPoint originPoint = NSMakePoint(x + 4, _iconMore.frame.origin.y);
    [_iconMore setFrameOrigin:originPoint];
}

@end
