//
//  LJJForgetVC.m
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJForgetVC.h"

@interface LJJForgetVC ()

@end

@implementation LJJForgetVC

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self.type isEqualToString:@"forget"]) {
         self.title=@"忘记密码1/2";
    }else
    {
        self.title=@"注册1/2";
    }
   
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
    codeBtn.layer.cornerRadius=4;
    nextBtn.layer.cornerRadius=4;
}
#pragma mark-键盘事件处理
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [userTextField resignFirstResponder];
    [codeTextField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
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
- (IBAction)nextBtnClicked:(UIButton *)sender {
    if ([self.type isEqualToString:@"forget"]) {
         [self performSegueWithIdentifier:@"LJJForgetPsdVC" sender:nil];
    }else
    {
        [self performSegueWithIdentifier:@"LJJRegistPsdVC" sender:nil];
    }
   
}

- (IBAction)codeBtnClicked:(UIButton *)sender {
}
@end
