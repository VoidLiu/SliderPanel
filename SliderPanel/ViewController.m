//
//  ViewController.m
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"%@ will appear",self);
    
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"%@ did appear", self);
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"%@ will disappear", self);
    
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"%@ did disappear", self);
}

-(void)willMoveToParentViewController:(UIViewController *)parent
{
    [super willMoveToParentViewController:parent];
    NSLog(@"%@ will move to parent view controller", self);
}
-(void)didMoveToParentViewController:(UIViewController *)parent
{
    [super didMoveToParentViewController:parent];
    NSLog(@"%@ did move to parent view controller", self);
    
}


@end
