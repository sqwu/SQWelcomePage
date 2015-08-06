//
//  SQWelcomePageViewController.m
//  SQWelcomePage
//
//  Created by sqwu on 15/8/6.
//  Copyright (c) 2015年 sqwu.com. All rights reserved.
//

#import "SQWelcomePageViewController.h"

@interface SQWelcomePageViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation SQWelcomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < self.imagesArray.count; i++) {
        UIImageView *welcomeImageView = [[UIImageView alloc] init];
        welcomeImageView.frame = CGRectMake(i * CGRectGetWidth([UIScreen mainScreen].bounds), 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds));
        welcomeImageView.image = self.imagesArray[i];
        [self.scrollView addSubview:welcomeImageView];
    }
    
    self.descriptionLabel.text = [self.descriptionArray firstObject];
    
    self.scrollView.contentSize = CGSizeMake(self.imagesArray.count * CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)actionResponse:(id)sender {
    
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f", scrollView.contentOffset.x / CGRectGetWidth([UIScreen mainScreen].bounds));
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger currentPage = scrollView.contentOffset.x / CGRectGetWidth([UIScreen mainScreen].bounds);
    self.pageControl.currentPage = currentPage;
    [self changeTextWithAnimation:0.35 currentPage:currentPage];
}

#pragma mark - helpers

- (void)changeTextWithAnimation:(CGFloat)duration currentPage:(NSInteger)currentPage
{
    self.descriptionLabel.text = self.descriptionArray[currentPage];
}

@end
