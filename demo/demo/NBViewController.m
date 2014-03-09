//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 3/9/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"
#import "UIColor+Mix.h"

@interface NBViewController ()

@property (nonatomic,retain) IBOutlet UIView *colorView1;
@property (nonatomic,retain) IBOutlet UIView *colorView2;
@property (nonatomic,retain) IBOutlet UISlider *slider1;
@property (nonatomic,retain) IBOutlet UISlider *slider2;

@property (nonatomic,retain) UIColor *color1A;
@property (nonatomic,retain) UIColor *color1B;
@property (nonatomic,retain) NSArray *colors2;

-(IBAction)changedSlider1;
-(IBAction)changedSlider2;

@end

@implementation NBViewController

-(void)viewDidLoad {
    _color1A = [UIColor blueColor];
    _color1B = [UIColor purpleColor];
    _colors2 = @[
                 @{@"position": @0.0,
                   @"color": [UIColor redColor]},
                 @{@"position": @0.5,
                   @"color": [UIColor yellowColor]},
                 @{@"position": @1.0,
                   @"color": [UIColor greenColor]}
                 ];
    
    [self changedSlider1];
    [self changedSlider2];
}

-(IBAction)changedSlider1 {
    _colorView1.backgroundColor = [UIColor colorBetweenColor:_color1A
                                                    andColor:_color1B
                                                  percentage:_slider1.value];
}

-(IBAction)changedSlider2 {
    _colorView2.backgroundColor = [UIColor colorAlongColors:_colors2
                                                 percentage:_slider2.value];
}

@end
