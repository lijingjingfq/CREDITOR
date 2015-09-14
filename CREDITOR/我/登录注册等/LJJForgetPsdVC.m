//
//  LJJForgetPsdVC.m
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJForgetPsdVC.h"

@interface LJJForgetPsdVC ()

@end

@implementation LJJForgetPsdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"忘记密码2/2";
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
#pragma mark-键盘事件处理
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [passwordTextField resignFirstResponder];
    [repeatPsdTextField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
#pragma mark-按钮事件处理
- (IBAction)sureBtnClicked:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
