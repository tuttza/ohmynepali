//
//  AppDelegate.m
//  oh my nepali
//
//  Created by zach on 9/23/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    
    // Need to set TabBar item images and render them with their orginal colors:
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    
    // repeat for every tab, but increment the index for each tabbar item.
    UITabBarItem *colorTab = [tabBar.items objectAtIndex:0];
    UITabBarItem *foodTab = [tabBar.items objectAtIndex:1];
    UITabBarItem *numberTab = [tabBar.items objectAtIndex:2];
    
    colorTab.image = [[UIImage imageNamed:@"paint_palette"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    colorTab.selectedImage = [[UIImage imageNamed:@"paint_palette"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    foodTab.image = [[UIImage imageNamed:@"cheese_wine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    foodTab.selectedImage = [[UIImage imageNamed:@"cheese_wine"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    numberTab.image = [[UIImage imageNamed:@"teams"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    numberTab.selectedImage = [[UIImage imageNamed:@"teams"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
