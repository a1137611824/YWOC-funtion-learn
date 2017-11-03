//
//
//  YWOC-百度贴吧
//
//  Created by Mac on 2017/10/27.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "TBmainController.h"
#import "TBmainCell.h"

@interface TBmainController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong,nonatomic) UITableView *myTableView;  /**tableView*/

@end

#define TBmainCellID "TBmainCellID"

@implementation TBmainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];      //设置导航栏
    [self setupNav];    //设置基础页面
   
    
}

#pragma mark --UI
- (void)initUI {
    
    //注册tableviewCell
    UINib *nib = [UINib nibWithNibName:@"TBmainCell" bundle:nil];
    [self.myTableView registerNib:nib forCellReuseIdentifier:@TBmainCellID];
    [self.view addSubview:self.myTableView];
    
}

- (void)setupNav {
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    [self.navigationController.navigationBar setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor yellowColor]}];
    self.title = @"YW百度贴吧";
}


#pragma mark --lazy
- (UITableView *)myTableView {
    if (!_myTableView) {
        _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:(UITableViewStylePlain)];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
        _myTableView.backgroundColor = [UIColor blueColor];
        _myTableView.showsVerticalScrollIndicator = false;
        _myTableView.rowHeight = 121;
    }
    return _myTableView;
}

#pragma mark --UITableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TBmainCell  *cell = [tableView dequeueReusableCellWithIdentifier:@TBmainCellID forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat viewHeight = scrollView.frame.size.height + scrollView.contentInset.top;
    for (TBmainCell *cell in [self.myTableView visibleCells]) {
        CGFloat y = cell.center.y - scrollView.contentOffset.y;
        CGFloat p = y - viewHeight / 2;
        CGFloat scale = cos(p / viewHeight * 0.8) * 0.95;
        [UIView animateWithDuration:0.15 delay:0 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState animations:^{
            cell.contentView.transform = CGAffineTransformMakeScale(scale, scale);
        } completion:NULL];
    }
}


@end





