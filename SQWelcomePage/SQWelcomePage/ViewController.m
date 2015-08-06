//
//  ViewController.m
//  SQWelcomePage
//
//  Created by sqwu on 15/8/6.
//  Copyright (c) 2015年 sqwu.com. All rights reserved.
//

#import "ViewController.h"
#import "SQWelcomePageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)welcomePageAction:(id)sender {
    SQWelcomePageViewController *welcomePageVC = [[SQWelcomePageViewController alloc] init];
    
    UIImage *image1 = [UIImage imageNamed:@"page1"];
    UIImage *image2 = [UIImage imageNamed:@"page2"];
    UIImage *image3 = [UIImage imageNamed:@"page3"];
    UIImage *image4 = [UIImage imageNamed:@"page4"];
    
    NSString *description1 = @"描述1描述1描述1描述1描述1描述1描述1描述1描述1描述1";
    NSString *description2 = @"描述2描述2描述2描述2描述2描述2描述2";
    NSString *description3 = @"描述3描述3描述3描述3描述3描述3描述3描述3描述3描述3描述3描述3描述3";
    NSString *description4 = @"描述4描述4描述4描述4描述4描述4描述4描述4描述4";
    
    welcomePageVC.imagesArray = @[image1, image2, image3, image4];
    welcomePageVC.descriptionArray = @[description1, description2, description3, description4];
    
    [self presentViewController:welcomePageVC animated:YES completion:nil];
}

@end
