//
//  LJJCreditorVC.h
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCSlideSwitchView.h"
#import "LJJPersonCreditorVC.h"
#import "LJJInvestVC.h"
@interface LJJCreditorVC : UIViewController<QCSlideSwitchViewDelegate>
{
   
   
//    LJJPersonCreditorVC *vc1;
//    LJJPersonCreditorVC *vc2;
//    LJJPersonCreditorVC *vc3;
//    LJJPersonCreditorVC *vc4;
//    LJJPersonCreditorVC *vc5;
//    LJJPersonCreditorVC *vc6;

}
@property (strong, nonatomic) IBOutlet QCSlideSwitchView *slideSwitchView;
@property (nonatomic, strong) LJJPersonCreditorVC *vc1;
@property (nonatomic, strong) LJJPersonCreditorVC *vc2;
@property (nonatomic, strong) LJJInvestVC *vc3;
@property (nonatomic, strong) LJJPersonCreditorVC *vc4;
@property (nonatomic, strong) LJJPersonCreditorVC *vc5;
@property (nonatomic, strong) LJJPersonCreditorVC *vc6;
@end
