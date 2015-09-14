//
//  LJJForgetPsdVC.h
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJForgetPsdVC : UIViewController<UITextFieldDelegate>
{

    __weak IBOutlet UIButton *sureBtn;
    __weak IBOutlet UITextField *passwordTextField;

    __weak IBOutlet UITextField *repeatPsdTextField;
}

- (IBAction)sureBtnClicked:(UIButton *)sender;

@end
