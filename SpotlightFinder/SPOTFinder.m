//
//  SPFinder.m
//  SpotlightFinder
//
//  Created by Josip Cavar on 09/12/14.
//  Copyright (c) 2014 Josip Cavar. All rights reserved.
//

#import "SPOTFinder.h"
#import <objc/runtime.h>

@implementation SPOTFinder

+ (instancetype)sharedInstance {
    
    static id plugin = nil;
    if (plugin == nil) {
        plugin = [[self alloc] init];
    }
    return plugin;
}

+ (void)load {
    
    NSLog(@"SPOTFinder loaded");
    id plugin = [self sharedInstance];
    if (plugin) {
        SPAppDelegate *appDelegate = [NSApp delegate];
        NSView *view = appDelegate.window.topView;
        NSButton *button = [[NSButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(appDelegate.window.searchField.frame) - CGRectGetHeight(appDelegate.window.searchField.frame), CGRectGetMinY(appDelegate.window.searchField.frame), CGRectGetHeight(appDelegate.window.searchField.frame), CGRectGetHeight(appDelegate.window.searchField.frame))];
        [button setButtonType:NSMomentaryPushInButton];
        [button setBezelStyle: NSRoundedDisclosureBezelStyle];
        [button setImagePosition:NSImageOnly];
        button.transparent = YES;
        [button setImage:[NSImage imageNamed:NSImageNameRevealFreestandingTemplate]];
        button.autoresizingMask = NSViewNotSizable | NSViewMaxYMargin | NSViewMaxYMargin;
        [button setTarget:[self sharedInstance]];
        [button setAction:@selector(buttonShowInFinderOnClick)];
        [view addSubview:button];
    }
}

- (void)buttonShowInFinderOnClick {
    
    SPAppDelegate *appDelegate = [NSApp delegate];
    if ([[appDelegate selectedResult] respondsToSelector:@selector(filePath)]) {
        id result = [[appDelegate selectedResult] filePath];
        if ([result isKindOfClass:NSString.class]) {
            NSLog(@"SPOTFinder opening path %@", result);
            [[NSWorkspace sharedWorkspace] selectFile:result inFileViewerRootedAtPath:@""];
        }
    }
}

@end
