//
//  TBmainCell.m
//  YWOC-百度贴吧
//
//  Created by Mac on 2017/10/27.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "TBmainCell.h"

@interface TBmainCell()
@property (strong, nonatomic) IBOutlet UIView *topView;
@property (strong, nonatomic) IBOutlet UIView *bottomView;

@end


@implementation TBmainCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //添加自定义的视图
    
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //设置topView的圆角属性
    UIBezierPath *filePath = [UIBezierPath bezierPathWithRoundedRect: _topView.bounds byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(5, 5)];
    CAShapeLayer *fileLayer = [[CAShapeLayer alloc] init];
    fileLayer.path = filePath.CGPath;
    _topView.layer.mask = fileLayer;
    
    //设置bottom的圆角属性
    UIBezierPath *filePathBottom = [UIBezierPath bezierPathWithRoundedRect:_bottomView.bounds byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(5, 5)];
    CAShapeLayer *fileLayerBottom = [[CAShapeLayer alloc] init];
    fileLayerBottom.path = filePathBottom.CGPath;
    _bottomView.layer.mask = fileLayerBottom;
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
