//
//  RootViewController.m
//  YWPageScrollView
//
//  Created by Mac on 2017/10/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "RootViewController.h"
#import "YWPageScrollView.h"

@interface RootViewController () <UIScrollViewDelegate>

#define SCREEN_WIDTH self.view.bounds.size.width
#define SCREEN_HEIGHT self.view.bounds.size.height


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
    //关联myScrollView和pageController
    
}

#pragma mark UI
- (void)setupUI
{
    YWPageScrollView *scrollView = [[YWPageScrollView alloc]initWithFrame:self.view.bounds];
    
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT - 40)];
    view1.backgroundColor = [UIColor redColor];
    [scrollView addPage:view1];
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT -40)];
    view2.backgroundColor = [UIColor blueColor];
    [scrollView addPage:view2];
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT - 40)];
    view3.backgroundColor = [UIColor lightGrayColor];
    [scrollView addPage:view3];
    
    UIView *view4 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT -40)];
    view4.backgroundColor = [UIColor greenColor];
    [scrollView addPage:view4];
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"1111");
}

@end
