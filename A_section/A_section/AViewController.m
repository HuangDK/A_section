//
//  AViewController.m
//  A_section
//
//  Created by hdk on 2020/10/15.
//  Copyright © 2020 hdk. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@property (nonatomic, strong) UIButton *pushButton;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.pushButton sizeToFit];
    self.pushButton.center = self.view.center;
}

#pragma mark - event
- (void)onTapPushBViewController:(UIButton *)sender {
    UIViewController *b = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello Module B"];
    [self.navigationController pushViewController:b animated:YES];
}

#pragma mark - getter & setter
- (UIButton *)pushButton {
    if (_pushButton == nil) {
        _pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushButton setTitle:@"push B ViewController" forState:UIControlStateNormal];
        [_pushButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushButton addTarget:self action:@selector(onTapPushBViewController:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushButton;
}

@end
