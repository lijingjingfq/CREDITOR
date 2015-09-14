//
//  LJJLoginVC.h
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJLoginVC : UIViewController<UITextFieldDelegate>
{

    __weak IBOutlet UIButton *registBtn;
    __weak IBOutlet UIButton *loginBtn;
    __weak IBOutlet UITextField *userTextField;
    __weak IBOutlet UITextField *passwordTextField;
    NSString*type;
}
- (IBAction)backBtnClicked:(UIButton *)sender;
- (IBAction)registBtnClicked:(UIButton *)sender;
- (IBAction)loginBtnClicked:(UIButton *)sender;
- (IBAction)forgetBtnClicked:(UIButton *)sender;

@end
