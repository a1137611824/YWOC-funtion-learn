//
//  YWPageScrollView.m
//  YWPageScrollView
//
//  Created by Mac on 2017/10/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "YWPageScrollView.h"

@interface YWPageScrollView()

@property (strong, nonatomic) UIPageControl *pageController;
@property (strong, nonatomic) NSMutableArray *pageViewNums;

@end

@implementation YWPageScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //scrollView
        _myScollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _myScollView.showsVerticalScrollIndicator = false;
        _myScollView.showsHorizontalScrollIndicator = false;
        _myScollView.delegate = self;
        _myScollView.pagingEnabled = true;
        [self addSubview:_myScollView];
        
        //pageController
        _pageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, frame.size.height - 35, frame.size.width, 35)];
        [_pageController addTarget:self action:@selector(pageChange:) forControlEvents:UIControlEventTouchDown];
        _pageController.pageIndicatorTintColor = [UIColor lightGrayColor];
        _pageController.currentPageIndicatorTintColor = [UIColor grayColor];
        [self addSubview:_pageController];
        
        //NSmutableArray
        _pageViewNums = [[NSMutableArray alloc]init];
        
    }
    return self;
}

#pragma makr method
- (void)addPage:(UIView *) page
{
    UIView *tempPageView = [[UIView alloc] initWithFrame:CGRectMake(_pageViewNums.count * _myScollView.frame.size.width, 0, _myScollView.frame.size.width, _myScollView.frame.size.height)];
    [tempPageView addSubview:page];
    [_myScollView addSubview:tempPageView];
    [_pageViewNums addObject:tempPageView];
    
    
    _myScollView.contentSize = CGSizeMake(_pageViewNums.count * _myScollView.frame.size.width, _myScollView.frame.size.height);
    _pageController.numberOfPages = _pageViewNums.count;
    
}


#pragma mark selector
- (void)pageChange:(UIPageControl *)pageContr
{
    NSLog(@"page change");
    
    CGRect frame = _myScollView.frame;
    frame.origin.y = 0;
    frame.origin.x = pageContr.currentPage * frame.size.width;
    [_myScollView scrollRectToVisible:frame animated:true];
}

#pragma mark lazy


#pragma mark delegate 
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int page = ceil((scrollView.contentOffset.x - scrollView.frame.size.width/2)/scrollView.frame.size.width);
    _pageController.currentPage = page;
    NSLog(@"wwww");
    
    if ([_delegate conformsToProtocol:@protocol(UIScrollViewDelegate)] && [_delegate respondsToSelector:@selector(scrollViewDidScroll:)])[_delegate scrollViewDidScroll:scrollView];

}


@end
