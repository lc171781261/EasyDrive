//
//  LCMainViewController.m
//  EasyDrive
//
//  Created by 刘聪 on 16/1/20.
//  Copyright © 2016年 刘聪. All rights reserved.
//

#import "LCMainViewController.h"

@interface LCMainViewController ()
@property (nonatomic,strong)UIScrollView *scrollView;

@end

@implementation LCMainViewController

- (UIScrollView *)scrollView {
    
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    }
    return _scrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"EasyDrive";
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(BarAction)];
    [self creatScrollview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)BarAction {
    
}

- (void)creatScrollview {
    
    for (int i = 0; i<4; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(SCREENWITH*i, 0, SCREENWITH, SCREENHEIGHT)];
        int r = arc4random()%255;
        int g = arc4random()%255;
        int b = arc4random()%255;
        view.backgroundColor = UIColorRGB(r, g, b);
        [self.scrollView addSubview:view];
        self.scrollView.contentSize = CGSizeMake(SCREENWITH*(i+1), SCREENHEIGHT);
    }
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = YES;
    [self.view addSubview:self.scrollView];
}

@end
