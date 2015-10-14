//
//  TodayViewController.m
//  Today Extension
//
//  Created by Evgeny Karkan on 10/14/15.
//  Copyright © 2015 Mac. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>


@interface TodayViewController () <NCWidgetProviding>

@property (nonatomic, strong) NSUserDefaults* defaults;

@end


@implementation TodayViewController

#pragma mark - Life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // initial widget height
	self.preferredContentSize = CGSizeMake(300, 200);
	
    // same container as in containig app
    self.defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.today.widget"];
    
    if ([self.defaults objectForKey: @"token"]) {
        self.imageView.backgroundColor = [UIColor greenColor];
    }
}

#pragma mark - NCWidgetProviding protocol

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    // here we can perform updates with completion blocks described above depends on results.
    
    if ([self.defaults objectForKey: @"worldSecret"]) {
        self.imageView.backgroundColor = [UIColor orangeColor];
    }

    completionHandler(NCUpdateResultNewData);
}

#pragma mark - Action 

- (IBAction)buttonPressed:(id)sender
{
    // test animations in widget
	if (self.imageView.frame.size.height == 100) {
		[UIView animateWithDuration: 0.3f animations:^{
			self.imageView.frame = CGRectMake(20, 36, 260, 128);
		}];
	}
	else {
		[UIView animateWithDuration: 0.3f animations:^{
			self.imageView.frame = CGRectMake(20, 36, 100, 100);
		}];
	}
}

@end
