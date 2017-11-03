//
//  RootViewController.m
//  YWPageScrollView
//
//  Created by Mac on 2017/10/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *myScrollView;
@property (strong, nonatomic) UIPageControl *pageController;


@property (strong, nonatomic) NSMutableArray *pageViews;
@property (assign, nonatomic) NSUInteger numberOfpages;

#define SCREEN_WIDTH self.view.bounds.size.width
#define SCREEN_HEIGHT self.view.bounds.size.height


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupUI];
    //关联myScrollView和pageController
    
}

#pragma mark UI
- (void)setupUI
{
    [self.view addSubview:self.myScrollView];
    self.view.backgroundColor = [UIColor whiteColor];

    _pageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 36, SCREEN_WIDTH, 36)];
    [_pageController addTarget:self action:@selector(pageControllerDidChange:) forControlEvents:(UIControlEventValueChanged)];
    _pageController.pageIndicatorTintColor = [UIColor lightGrayColor];
    _pageController.currentPageIndicatorTintColor = [UIColor grayColor];
    [self.view addSubview:_pageController];
    
    _pageViews = [[NSMutableArray alloc] init];
    
    
    
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT - 40)];
    view1.backgroundColor = [UIColor redColor];
    [self addPage:view1];
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT -40)];
    view2.backgroundColor = [UIColor blueColor];
    [self addPage:view2];
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT - 40)];
    view3.backgroundColor = [UIColor lightGrayColor];
    [self addPage:view3];
    
    UIView *view4 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_HEIGHT -40)];
    view4.backgroundColor = [UIColor greenColor];
    [self addPage:view4];
}

#pragma mark method
- (void)addPage:(UIView *)page
{
    UIView *pageControllerView = [[UIView alloc] initWithFrame:CGRectMake(self.numberOfpages*SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [pageControllerView addSubview:page];
    [self.myScrollView addSubview:pageControllerView];
    [_pageViews addObject:pageControllerView];
    
    self.myScrollView.contentSize = CGSizeMake(SCREEN_WIDTH*self.numberOfpages, SCREEN_HEIGHT);
    _pageController.numberOfPages = self.numberOfpages;
}

- (void)scrollToPageWithIndex:(NSUInteger)pageIndex animated:(BOOL)animated
{
    CGRect frame = self.myScrollView.frame;
    frame.origin.y = 0;
    frame.origin.x = frame.size.width * pageIndex;
    [self.myScrollView scrollRectToVisible:frame animated:animated];
}


#pragma mark lazy
- (UIScrollView *)myScrollView
{
    if (!_myScrollView)
    {
        _myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        _myScrollView.delegate = self;
        _myScrollView.showsHorizontalScrollIndicator = false;
        _myScrollView.pagingEnabled = true;
    }
    return _myScrollView;
}
- (NSUInteger)numberOfpages
{
    return _pageViews.count;
}

#pragma mark Evets
- (void)pageControllerDidChange:(UIPageControl *)pageController
{
    NSLog(@"fawefawf");
    [self scrollToPageWithIndex:pageController.currentPage animated:true];
}

#pragma mark --delegate 
- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    int page = floor((scrollView.contentOffset.x - SCREEN_WIDTH/2)/SCREEN_WIDTH) + 1;
    _pageController.currentPage = page;
}



@end
