//
//  BBComboBoxDataSource.h
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BBComboBoxDataSource : NSObject <NSComboBoxDataSource>

- (void)initData:(NSMutableArray *)array;

@end
