//
//  LJJTabBarVC.m
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJTabBarVC.h"

@interface LJJTabBarVC ()

@end

@implementation LJJTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setTintColor:[UIColor orangeColor]];
    self.selectedIndex=2;
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:ISFIRST];
    [[NSUserDefaults standardUserDefaults] synchronize];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
