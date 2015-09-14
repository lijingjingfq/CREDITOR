//
//  LJJForgetVC.h
//  CREDITOR
//
//  Created by apple on 15/8/26.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJForgetVC : UIViewController<UITextFieldDelegate>
{
    __weak IBOutlet UITextField *codeTextField;
    __weak IBOutlet UIButton *codeBtn;

    __weak IBOutlet UIButton *nextBtn;
    __weak IBOutlet UITextField *userTextField;
}
@property(nonatomic,strong)NSString*type;
- (IBAction)nextBtnClicked:(UIButton *)sender;

- (IBAction)codeBtnClicked:(UIButton *)sender;
@end
