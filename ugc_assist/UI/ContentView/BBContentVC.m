//
//  BBContentVC.m
//  ugc_assist
//
//  Created by gao bo on 16/9/12.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBContentVC.h"
#import "BBFunctionVC.h"

@interface BBContentVC ()

@property (nonatomic, strong) BBFunctionVC *functionVC;

@end

@implementation BBContentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    _functionVC = [[BBFunctionVC alloc] init];
    [self addChildViewController:_functionVC];
    [self.view addSubview:_functionVC.view];
}

@end
