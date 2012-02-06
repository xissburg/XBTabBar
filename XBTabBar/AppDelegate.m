//
//  AppDelegate.m
//  XBTabBar
//
//  Created by xiss burg on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "XBTabBarView.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *tabBarController = (UITabBarController *)[[[application windows] objectAtIndex:0] rootViewController];
    [XBTabBarView setupTabBarViewOnTabBarController:tabBarController];
    
    return YES;
}

@end
