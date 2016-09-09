//
//  AppDelegate.m
//  ugc_assist
//
//  Created by Ray Fong on 16/9/6.
//  Copyright © 2016年 bilibili. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()

@property (nonatomic, strong) MainWindowController *mainWindowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _mainWindowController = [[MainWindowController alloc] init];
    [[_mainWindowController window] center];
    [_mainWindowController.window orderFront:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
