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

@end


@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	self.preferredContentSize = CGSizeMake(300, 200);
	
	
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

#pragma mark - Action 


- (IBAction)buttonPressed:(id)sender {
	
//	if (self.preferredContentSize.height == 200) {
//		//self.preferredContentSize = CGSizeMake(300, 250);
//		
//		[UIView animateWithDuration: 0.3 animations:^{
//			self.imageView.frame = CGRectMake(20, 36, 100, 100);
//		}];
//	}
//	else {
//		//self.preferredContentSize = CGSizeMake(300, 200);
//		
//		[UIView animateWithDuration: 0.3 animations:^{
//			self.imageView.frame = CGRectMake(20, 36, 260, 128);
//		}];
//	}
	
	if (self.imageView.frame.size.height == 100) {
		[UIView animateWithDuration: 0.3 animations:^{
			self.imageView.frame = CGRectMake(20, 36, 260, 128);
		}];
	}
	else {
		//self.preferredContentSize = CGSizeMake(300, 200);
		
		[UIView animateWithDuration: 0.3 animations:^{
			
			
			self.imageView.frame = CGRectMake(20, 36, 100, 100);
		}];
	}
}

@end
