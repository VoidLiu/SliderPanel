//
//  AppDelegate.m
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import "AppDelegate.h"
#import "JACentreViewController.h"
#import "LeftPanelViewController.h"
#import "RightPanelViewController.h"
#import "JASidePanelController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window  =_window;
@synthesize JASidePanelController =_JASidePanelController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.JASidePanelController  =[[JASidePanelController alloc]init];
    self.JASidePanelController.shouldDelegateAutorotateToVisiblePanel = NO;
    
    self.JASidePanelController.leftPanel    =[[LeftPanelViewController alloc]init];
    self.JASidePanelController.rightPanel   =[[RightPanelViewController alloc]init];
    self.JASidePanelController.centerPanel  =[[UINavigationController alloc]initWithRootViewController:[[JACentreViewController alloc] init]];
    
//    self.JASidePanelController.style        = JASidePanelMultipleActive;
    
    
    
    self.window.rootViewController      =self.JASidePanelController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
