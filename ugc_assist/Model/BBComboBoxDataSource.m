//
//  BBComboBoxDataSource.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBComboBoxDataSource.h"

@interface BBComboBoxDataSource ()

@property (nonatomic, strong) NSArray *data;

@end

@implementation BBComboBoxDataSource

- (void)initData:(NSMutableArray *)array {
    _data = [array copy];
}

- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox {
    return [_data count];
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index {
    return [_data objectAtIndex:index];
}

@end
