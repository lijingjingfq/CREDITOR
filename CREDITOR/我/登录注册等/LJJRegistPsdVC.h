//
//  LJJRegistPsdVC.h
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJRegistPsdVC : UIViewController<UITextFieldDelegate>
{

    __weak IBOutlet UITextField *repeatPsdTextField;
    __weak IBOutlet UITextField *passwordTextField;
    __weak IBOutlet UITextField *nickNameTextField;
    __weak IBOutlet UITextField *areaTextField;
    __weak IBOutlet UIButton *sureBtn;
}
- (IBAction)sureBtnClicked:(UIButton *)sender;

@end
