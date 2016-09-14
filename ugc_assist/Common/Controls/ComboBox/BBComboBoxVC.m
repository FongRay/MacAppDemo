//
//  BBComboBoxVC.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/13.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "BBComboBoxVC.h"
#import "BBComboBox.h"
#import "BBImageButton.h"
#import "BBMenuItem.h"
#import "NSColor+RGBValue.h"

@interface BBComboBoxVC ()

@property (nonatomic, strong) BBComboBox *comboBox;

@property (nonatomic, strong) NSTextField *textField;

@property (nonatomic, strong) BBImageButton *arrowBtn;

@property (nonatomic, strong) NSMenu *accountList;

- (IBAction)showAccounts:(id)sender;

- (IBAction)itemSelected:(id)sender;

@end

@implementation BBComboBoxVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    NSRect rect = [self.view bounds];
    _textField = [[NSTextField alloc] initWithFrame:NSMakeRect(14, 13, NSWidth(rect) - 14 - 30, 16)];
    [_textField setFont:[NSFont systemFontOfSize:14.0]];
    [_textField setBordered:NO];
    [_textField setPlaceholderAttributedString:
     [[NSAttributedString alloc] initWithString:@"请输入手机号/邮箱"
                                     attributes:@{
                                                  NSForegroundColorAttributeName:[NSColor colorWithRGBInt:0x99a2aa]
     }
    ]];
    [_textField setEditable:YES];
    [_textField setFocusRingType:NSFocusRingTypeNone];
    [_textField setMaximumNumberOfLines:0];
    [self.view addSubview:_textField];
    
    _arrowBtn = [[BBImageButton alloc] initWithFrame:NSMakeRect(NSWidth(rect) - 31, 5, 30, 30)];
    [_arrowBtn setImage:@"icon_down.png" withHover:@"icon_down_s.png"];
    [_arrowBtn setTarget:self];
    [_arrowBtn setAction:@selector(showAccounts:)];
    [self.view addSubview:_arrowBtn];
    
    _accountList = [[NSMenu alloc] init];
    [_accountList setMinimumWidth:NSWidth(self.view.bounds) - 2.0];
    
    BBMenuItem *item1 = [[BBMenuItem alloc] initWithTitle:@"Test00001" action:@selector(itemSelected:) keyEquivalent:@""];
    [item1 setFrame:NSMakeRect(0, 0, 340, 34)];
    [_accountList addItem:item1];
    BBMenuItem *item2 = [[BBMenuItem alloc] initWithTitle:@"fr-ecnu@qq.com" action:@selector(itemSelected:) keyEquivalent:@""];
    [item2 setFrame:NSMakeRect(0, 0, 340, 34)];
    [_accountList addItem:item2];
    
    BBMenuItem *item3 = [[BBMenuItem alloc] initWithTitle:@"兔子亮牙" action:@selector(itemSelected:) keyEquivalent:@""];
    [item3 setFrame:NSMakeRect(0, 0, 340, 34)];
    [_accountList addItem:item3];
}

- (void)setFrame:(NSRect)frame {
    _comboBox = [[BBComboBox alloc] initWithFrame:frame];
}

- (void)loadView {
    self.view = _comboBox;
}

- (void)showAccounts:(id)sender {
    [_accountList popUpMenuPositioningItem:nil atLocation:NSMakePoint(0, 45) inView:self.view];
}

- (void)itemSelected:(id)sender {
    NSMenuItem *item = sender;
    [_textField setStringValue:item.title];
}

@end
