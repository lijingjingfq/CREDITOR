//
//  LJJFindVC.h
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJFindVC : UIViewController<UIScrollViewDelegate>
{

    __weak IBOutlet UIButton *publicBtn;
    __weak IBOutlet UIButton *assignBtn;
    __weak IBOutlet UIButton *aboutBtn;
    __weak IBOutlet UILabel *totalCreditorLabel;
    __weak IBOutlet UIScrollView *scorll;
    UIPageControl*pageControl;
    NSTimer *timer;
    NSInteger currentPage;
}
- (IBAction)aboutBtnClicked:(UIButton *)sender;
- (IBAction)assignBtnClicked:(UIButton *)sender;
- (IBAction)publicBtnClicked:(UIButton *)sender;

@end
