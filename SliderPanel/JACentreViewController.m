//
//  JACentreViewController.m
//  SliderPanel
//
//  Created by allen on 27/4/15.
//  Copyright (c) 2015 allen. All rights reserved.
//

#import "JACentreViewController.h"

@interface JACentreViewController ()

@end

@implementation JACentreViewController
-(id)init
{
    if (self =[super init]) {
        self.title  =@"centre panel";
    }
    return  self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    CGFloat  red    =(CGFloat)arc4random()/0x100000000;
//    CGFloat  blue   =(CGFloat)arc4random()/0x100000000;
//    CGFloat  green  =(CGFloat)arc4random()/0x100000000;
//    self.view.backgroundColor   =[UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
//    
    CGFloat red = (CGFloat)arc4random() / 0x100000000;
    CGFloat green = (CGFloat)arc4random() / 0x100000000;
    CGFloat blue = (CGFloat)arc4random() / 0x100000000;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
    
}


@end
