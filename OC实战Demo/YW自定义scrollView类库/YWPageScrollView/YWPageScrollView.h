//
//  YWPageScrollView.h
//  YWPageScrollView
//
//  Created by Mac on 2017/10/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWPageScrollView : UIView <UIScrollViewDelegate>


@property (strong, readonly, nonatomic) UIScrollView *myScollView;
@property (weak, readwrite, nonatomic)id<UIScrollViewDelegate> delegate;

- (void)addPage:(UIView *) page;

@end
