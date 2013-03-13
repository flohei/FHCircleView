//
//  FHAppDelegate.m
//  FHCircleViewExample
//
//  Created by Florian Heiber on 13.03.13.
//  Copyright (c) 2013 rootof.net Heiber & Wiewel GbR. All rights reserved.
//

#import "FHAppDelegate.h"

#import "FHViewController.h"

@implementation FHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[FHViewController alloc] initWithNibName:@"FHViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
