//
//  ViewController.m
//  UIImageFlipDemo
//
//  Created by Scott Twichel on 7/29/14.
//  Copyright (c) 2014 PepperGum Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL secondImageVisible;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secondImageVisible = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)flipImage{
    NSString *imageName;
    if (secondImageVisible) {
        imageName = @"ld_home_home_title.png";
        secondImageVisible = NO;
    }else{
        imageName = @"ld_home_donor_title.png";
        
        secondImageVisible = YES;
    }
    
    UIImage *secondImage = [UIImage imageNamed:imageName];
    [UIView transitionWithView:_titleImage
                      duration:1
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{_titleImage.image = secondImage;}
                    completion:nil];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self flipImage];
}

@end
