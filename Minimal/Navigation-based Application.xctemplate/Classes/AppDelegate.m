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

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	RootViewController *rootViewController = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
	UINavigationController *navigationController = [[[UINavigationController alloc] initWithRootViewController:rootViewController] autorelease];
	window.rootViewController = navigationController;
	[window makeKeyAndVisible];
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
	[window release];
	[super dealloc];
}


@end
