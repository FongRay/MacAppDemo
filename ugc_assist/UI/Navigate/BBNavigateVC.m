//
//  BBNavigateVC.m
//  ugc_assist
//
//  Created by gao bo on 16/9/8.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBNavigateVC.h"
#include "BBNavigateItemVC.h"
#include "NSColor+RGBValue.h"

@interface BBNavigateVC ()

@property (nonatomic, strong) BBNavigateItemVC *uploadingItemVC;

@property (nonatomic, strong) BBNavigateItemVC *uploadedItemVC;

@end

@implementation BBNavigateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    _uploadingItemVC = [[BBNavigateItemVC alloc] init];
    [_uploadingItemVC setImageAndTitle:@"正在投稿" withNormalIcon:@"icon_complete_normal.png" hoverIcon:@"icon_complete_hover.png" viewRect:NSMakeRect(0, 0, 168, 49)];
    [_uploadingItemVC setBkColor:[NSColor colorWithRGBInt:0xffeef3]];
    [self addChildViewController:_uploadingItemVC];
    [self.view addSubview:_uploadingItemVC.view];
    
    _uploadedItemVC = [[BBNavigateItemVC alloc] init];
    [_uploadedItemVC setImageAndTitle:@"已投稿" withNormalIcon:@"icon_uplopad_normal.png" hoverIcon:@"icon_uplopad_hover.png" viewRect:NSMakeRect(0, 49, 168, 49)];
    [_uploadedItemVC setBkColor:[NSColor colorWithRGBInt:0xffffff]];
    [self addChildViewController:_uploadedItemVC];
    [self.view addSubview:_uploadedItemVC.view];
}

@end
