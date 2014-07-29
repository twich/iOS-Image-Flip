//
//  ViewController.m
//  UIImageFlipDemo
//
//  Created by Scott Twichel on 7/29/14.
//  Copyright (c) 2014 PepperGum Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)flipImageButton:(id)sender {
    
    UIImage *secondImage = [UIImage imageNamed:@"ld_home_donor_title.png"];
    [UIView transitionWithView:_titleImage
                      duration:1
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{_titleImage.image = secondImage;}
                    completion:nil];
}

@end
