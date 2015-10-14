//
//  ViewController.m
//  Widget
//
//  Created by Evgeny Karkan on 10/14/15.
//  Copyright © 2015 Mac. All rights reserved.
//

#import "ViewController.h"
#import <NotificationCenter/NotificationCenter.h>


@interface ViewController ()

@property (nonatomic, strong) NSUserDefaults* defaults;

@end


@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
    //accessing the same shared container 'group.today.widget'
    self.defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.today.widget"];
    
    [self.defaults setObject: @"TestTokenValue" forKey: @"token"];
    
}

#pragma mark - Action

- (IBAction)buttonPressed:(UIButton *)sender
{
    // store another yet data
    [self.defaults setObject: @(42) forKey: @"worldSecret"];
    
    // YES - widget will be visible
    // NO  - widget won't be visible
    [[NCWidgetController widgetController] setHasContent: YES
                           forWidgetWithBundleIdentifier: @"com.prophonix.widget.app.todayextension"];
}

@end
