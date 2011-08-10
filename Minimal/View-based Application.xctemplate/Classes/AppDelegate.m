//
//  AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{    
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_viewController = [[RootViewController alloc] init];
	_window.rootViewController = _viewController;
	[_window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *) application
{
	
}

- (void)applicationDidEnterBackground:(UIApplication *) application
{
	
}

- (void)applicationDidBecomeActive:(UIApplication *) application
{
		
}

- (void)dealloc 
{
	[_viewController release];
	[_window release];
	[super dealloc];
}


@end
