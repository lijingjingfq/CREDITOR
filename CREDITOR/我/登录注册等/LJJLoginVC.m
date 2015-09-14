//
//  LJJLoginVC.m
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJLoginVC.h"
#import "LJJForgetVC.h"
@interface LJJLoginVC ()

@end

@implementation LJJLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"登录";
    [self subviewsHandle];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark-界面控件初始化
-(void)subviewsHandle
{
    loginBtn.layer.cornerRadius=4;
    registBtn.layer.cornerRadius=4;
}

#pragma mark - 传值
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    id controller=segue.destinationViewController;
    if ([controller isKindOfClass:[LJJForgetVC class]]) {
        ((LJJForgetVC*)controller).type=type;
    }
}

#pragma mark-按钮事件处理
- (IBAction)backBtnClicked:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}

- (IBAction)registBtnClicked:(UIButton *)sender {
    type=@"regist";
    [self performSegueWithIdentifier:@"LJJForgetVC" sender:nil];
}

- (IBAction)loginBtnClicked:(UIButton *)sender {
}

- (IBAction)forgetBtnClicked:(UIButton *)sender {
     type=@"forget";
    [self performSegueWithIdentifier:@"LJJForgetVC" sender:nil];
}
#pragma mark-键盘事件处理
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [userTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return  YES;
}
@end
