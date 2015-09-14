//
//  LJJRegistPsdVC.m
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJRegistPsdVC.h"

@interface LJJRegistPsdVC ()

@end

@implementation LJJRegistPsdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"注册2/2";
    [self subviewsHandel];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark-界面控件初始化
-(void)subviewsHandel
{
    sureBtn.layer.cornerRadius=4;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark-按钮事件处理
- (IBAction)sureBtnClicked:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
