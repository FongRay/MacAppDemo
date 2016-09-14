//
//  BBLoginDialogController.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBLoginDialogController.h"
#import "BBLoginDialog.h"
#import "BBLoginVC.h"

@interface BBLoginDialogController ()

@property (nonatomic, strong) BBLoginDialog *loginDialog;

@property (nonatomic, strong) BBLoginVC *loginVC;

@end

@implementation BBLoginDialogController

- (instancetype)init {
    self = [super init];
    NSRect frame = NSMakeRect(0, 0, 422, 419);
    _loginDialog = [[BBLoginDialog alloc] initWithContentRect:frame
                                                    styleMask:NSBorderlessWindowMask
                                                      backing:NSBackingStoreBuffered
                                                        defer:NO];
    _loginVC = [[BBLoginVC alloc] init];
    [self setContentViewController:_loginVC];
    self.window = _loginDialog;
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)setFrame:(NSRect)frame {
    [_loginDialog setFrame:frame];
}

@end
