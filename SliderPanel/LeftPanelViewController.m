//
//  LeftPanelViewController.m
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import "LeftPanelViewController.h"
#import "JASidePanelController.h"
#import "UIViewController+JASidePanel.h"

#import "JACentreViewController.h"
#import "RightPanelViewController.h"

@interface LeftPanelViewController ()
@property (weak, nonatomic) UILabel * label;
@property (weak, nonatomic) UIButton * showCentre;
@property (weak, nonatomic) UIButton * hidCentre;
@property (weak, nonatomic) UIButton * removeRightPanel;
@property (weak, nonatomic) UIButton * addRightPanel;
@property (weak, nonatomic) UIButton * changeCentrePanel;


@end


@implementation LeftPanelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor   =[UIColor colorWithPatternImage:[JASidePanelController defaultImage]];
    self.view.backgroundColor       =[UIColor blueColor];
    
    
    UILabel     *label  =[[UILabel alloc]init];
    label.font          =[UIFont boldSystemFontOfSize:20.0f];
    label.textColor     =[UIColor blackColor];
    label.backgroundColor   =[UIColor clearColor];
    label.text          =@"Left color";
    [label sizeToFit];
    label.autoresizingMask     =UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    
    [self.view addSubview:label];
    self.label  = label;
    
    UIButton * button   =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame        = CGRectMake(20.0f, 70.0f, 200.0f, 40.0f);
    [button setTitle:@"show Centre" forState:UIControlStateNormal];
    button.autoresizingMask     =UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin ;
    [button addTarget:self action:@selector(_showTipped:) forControlEvents:UIControlEventTouchUpInside];
    button.hidden   = YES;
    [self.view addSubview:button];
    self.showCentre = button;
    
    button              =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame        = CGRectMake(20.0f, 70.0f, 200.0f, 40.0f);
    [button setTitle:@"hide Centre" forState:UIControlStateNormal];
    button.autoresizingMask     =UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin ;
    [button addTarget:self action:@selector(_hideTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.hidCentre = button;
    
    button              =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame        = CGRectMake(20.0f, 120.0f, 200.0f, 40.0f);
    [button setTitle:@"remove right panel" forState:UIControlStateNormal];
    button.autoresizingMask     =UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin ;
    [button addTarget:self action:@selector(_removeRight:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.removeRightPanel = button;
    
    
    button              =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame        = self.removeRightPanel.frame;
    [button setTitle:@"add right panel" forState:UIControlStateNormal];
    button.autoresizingMask     =UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin ;
    [button addTarget:self action:@selector(_addRight:) forControlEvents:UIControlEventTouchUpInside];
    button.hidden =YES;
    [self.view addSubview:button];
    self.addRightPanel = button;

    button              =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame        = CGRectMake(20.0f, 170.0f, 200.0f, 40.0f);
    [button setTitle:@"change centre" forState:UIControlStateNormal];
    button.autoresizingMask     =UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin ;
    [button addTarget:self action:@selector(_changeCentre:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.changeCentrePanel = button;

    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.label.center = CGPointMake(floorf(self.sidePanelController.leftVisibleWidth/2.0f), 25.0f);
}
-(IBAction)_hideTapped:(id)sender
{
    [self.sidePanelController setCenterPanelHidden:YES animated:YES duration:1.0f];
//    [self.sidePanelController showCenterPanelAnimated:YES];
    self.hidCentre.hidden   =YES;
    self.showCentre.hidden  =NO;
    
    
}
-(IBAction)_showTipped:(id)sender
{
    [self.sidePanelController setCenterPanelHidden:NO animated:YES duration:1.0f];
    self.hidCentre.hidden   = NO;
    self.showCentre.hidden  = YES;
    
    
}
-(IBAction)_removeRight:(id)sender
{
    self.sidePanelController.rightPanel = nil;
    self.removeRightPanel.hidden = YES;
    self.addRightPanel.hidden    = NO;
}
-(IBAction)_addRight:(id)sender
{
    self.sidePanelController.rightPanel = [[RightPanelViewController alloc]init];
    self.removeRightPanel.hidden    = NO;
    self.addRightPanel.hidden       = YES;
//    [self.sidePanelController showRightPanelAnimated:YES];
    
}
-(IBAction)_changeCentre:(id)sender
{
    JACentreViewController *centreView  =[[JACentreViewController alloc]init];
    self.sidePanelController.centerPanel    =[[UINavigationController alloc]initWithRootViewController:centreView];
    
    
}
@end
