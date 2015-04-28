//
//  LeftPanelViewController.h
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftPanelViewController : UIViewController


@property (weak, nonatomic, readonly) UILabel * label;
@property (weak, nonatomic, readonly) UIButton * showCentre;
@property (weak, nonatomic, readonly) UIButton * hidCentre;
@property (weak, nonatomic, readonly) UIButton * removeRightPanel;
@property (weak, nonatomic, readonly) UIButton * addRightPanel;
@property (weak, nonatomic, readonly) UIButton * changeCentrePanel;

@end
