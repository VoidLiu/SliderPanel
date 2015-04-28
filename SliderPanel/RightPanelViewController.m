//
//  RightPanelViewController.m
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import "RightPanelViewController.h"
#import "UIViewController+JASidePanel.h"
#import "JASidePanelController.h"

@interface RightPanelViewController ()

@end

@implementation RightPanelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    self.label.text = @"Right Panel";
    [self.label sizeToFit];
    self.hidCentre.frame = CGRectMake(self.view.bounds.size.width - 220.0f, 70.0f, 200.0f, 40.0f);
    self.hidCentre.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;
    self.showCentre.frame = self.hidCentre.frame;
    self.showCentre.autoresizingMask = self.hidCentre.autoresizingMask;
    
    self.removeRightPanel.hidden = YES;
    self.addRightPanel.hidden = YES;
    self.changeCentrePanel.hidden = YES;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.label.center = CGPointMake(floorf((self.view.bounds.size.width - self.sidePanelController.rightVisibleWidth)+ self.sidePanelController.rightVisibleWidth/2.0f), 25.0f );
}



@end
