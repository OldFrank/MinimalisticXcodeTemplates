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
@synthesize managedObjectContext, managedObjectModel, persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	RootViewController *rootViewController = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
	rootViewController.managedObjectContext = self.managedObjectContext;
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

- (NSManagedObjectContext *)managedObjectContext
{
	if (managedObjectContext != nil) {
		return managedObjectContext;
	}
	NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
	if (coordinator != nil) {
		managedObjectContext = [[NSManagedObjectContext alloc] init];
		[managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
	return managedObjectContext;
}

- (NSManagedObjectModel *)managedObjectModel
{
	if (managedObjectModel != nil) {
		return managedObjectModel;
	}
	NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"___PROJECTNAMEASIDENTIFIER___" withExtension:@"mom"];
	managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
	return managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
	if (persistentStoreCoordinator != nil) {
		return persistentStoreCoordinator;
	}
	NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"___PROJECTNAMEASIDENTIFIER___.sqlite"];
	NSError *error = nil;
	persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
	if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
	return persistentStoreCoordinator;
}

- (NSURL *)applicationDocumentsDirectory
{
	return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void)saveContext
{
	NSError *error = nil;
    if (self.managedObjectContext != nil) {
		if ([self.managedObjectContext hasChanges] && ![self.managedObjectContext save:&error]) {
			NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
			abort();
		}
	}
}

- (void)dealloc 
{
	[managedObjectContext release];
	[persistentStoreCoordinator release];
	[managedObjectModel release];
	[window release];
	[super dealloc];
}


@end
