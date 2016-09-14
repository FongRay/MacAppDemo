//
//  BBUserInfoVC.h
//  ugc_assist
//
//  Created by Ray Fong on 16/9/9.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BBUserInfoDelegate.h"

@interface BBUserInfoVC : NSViewController <BBUserInfoDelegate>

@property (nonatomic) NSSize superViewSize;

- (BOOL)IsLoggedIn;

@end
