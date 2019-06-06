//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "LHWCity.h"
#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    


    LHWCity *calgary = [[LHWCity alloc]initWithWeatherIn:@"Calgary" withPrecipitationChance:76.3 withSummary:@"Kinda shitty out" andTemp:21 andDate:[NSDate date]];
    LHWCity *vancouver = [[LHWCity alloc]initWithWeatherIn:@"Vancouver" withPrecipitationChance:76.3 withSummary:@"Kinda gray out" andTemp:17 andDate:[NSDate date]];
    LHWCity *shanghai = [[LHWCity alloc]initWithWeatherIn:@"Shanghai" withPrecipitationChance:76.3 withSummary:@"Kinda smoggy out" andTemp:23 andDate:[NSDate date]];
    LHWCity *newYork = [[LHWCity alloc]initWithWeatherIn:@"New York" withPrecipitationChance:76.3 withSummary:@"Kinda loud out" andTemp:19 andDate:[NSDate date]];
    LHWCity *winnipeg = [[LHWCity alloc]initWithWeatherIn:@"Winnipeg" withPrecipitationChance:76.3 withSummary:@"Kinda cold out" andTemp:15 andDate:[NSDate date]];
    
    
    UITabBarController *rootController = [[UITabBarController alloc]init];
    self.window.rootViewController = rootController;
    
    LHWCityViewController *vancouverCtrl = [[LHWCityViewController alloc]init];
    LHWCityViewController *shanghaiCtrl = [[LHWCityViewController alloc]init];
    LHWCityViewController *newYorkCtrl = [[LHWCityViewController alloc]init];
    LHWCityViewController *winnipegCtrl = [[LHWCityViewController alloc]init];
    LHWCityViewController *calgaryCtrl = [[LHWCityViewController alloc]init];
    
    
    
    vancouverCtrl.theCity = vancouver;
    shanghaiCtrl.theCity = shanghai;
    newYorkCtrl.theCity = newYork;
    winnipegCtrl.theCity = winnipeg;
    calgaryCtrl.theCity = calgary;
    vancouverCtrl.title = vancouverCtrl.theCity.city;
    shanghaiCtrl.title = shanghaiCtrl.theCity.city;
    newYorkCtrl.title = newYorkCtrl.theCity.city;
    winnipegCtrl.title = winnipegCtrl.theCity.city;
    calgaryCtrl.title = calgaryCtrl.theCity.city;
    
    UIImage *weatherImage1 = [UIImage imageNamed:@"clear-day.png"];
    UITabBarItem *theItem1 = [[UITabBarItem alloc]initWithTitle:@"Vancouver" image:weatherImage1 tag:0];
    [vancouverCtrl setTabBarItem:theItem1];
    
    UIImage *weatherImage2 = [UIImage imageNamed:@"clear-night.png"];
    UITabBarItem *theItem2 = [[UITabBarItem alloc]initWithTitle:@"Shanghai" image:weatherImage2 tag:0];
    [shanghaiCtrl setTabBarItem:theItem2];
    
    UIImage *weatherImage3 = [UIImage imageNamed:@"fog.png"];
    UITabBarItem *theItem3 = [[UITabBarItem alloc]initWithTitle:@"New York" image:weatherImage3 tag:0];
    [newYorkCtrl setTabBarItem:theItem3];
    
    UIImage *weatherImage4 = [UIImage imageNamed:@"partly-cloudy.png"];
    UITabBarItem *theItem4 = [[UITabBarItem alloc]initWithTitle:@"Winnipeg" image:weatherImage4 tag:0];
    [winnipegCtrl setTabBarItem:theItem4];
    
    UIImage *weatherImage5 = [UIImage imageNamed:@"sleet.png"];
    UITabBarItem *theItem5 = [[UITabBarItem alloc]initWithTitle:@"Calgary" image:weatherImage5 tag:0];
    [calgaryCtrl setTabBarItem:theItem5];
    
    
    
    
    
    UINavigationController *vancouverNav = [[UINavigationController alloc]initWithRootViewController:vancouverCtrl];
    UINavigationController *shanghaiNav = [[UINavigationController alloc]initWithRootViewController:shanghaiCtrl];
    UINavigationController *newYorkNav = [[UINavigationController alloc]initWithRootViewController:newYorkCtrl];
    UINavigationController *winnipegNav = [[UINavigationController alloc]initWithRootViewController:winnipegCtrl];
    UINavigationController *calgaryNav = [[UINavigationController alloc]initWithRootViewController:calgaryCtrl];
    
    [rootController addChildViewController:vancouverNav];
    [rootController addChildViewController:shanghaiNav];
    [rootController addChildViewController:newYorkNav];
    [rootController addChildViewController:winnipegNav];
    [rootController addChildViewController:calgaryNav];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
