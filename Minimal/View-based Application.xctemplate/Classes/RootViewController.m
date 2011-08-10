//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController

- (void)loadView
{
	[super loadView];
	self.view.backgroundColor = [UIColor lightGrayColor];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
		return YES;
	}
	return toInterfaceOrientation == UIInterfaceOrientationPortrait;
}

- (void)dealloc
{
	[super dealloc];
}

@end
