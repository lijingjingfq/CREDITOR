//
//  LJJFindVC.m
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJFindVC.h"

@interface LJJFindVC ()

@end

@implementation LJJFindVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self subviewHandle];
    self.title=@"发现";
    self.automaticallyAdjustsScrollViewInsets=NO;
       // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark-界面控件处理
-(void)subviewHandle
{
    publicBtn.layer.cornerRadius=30;
    assignBtn.layer.cornerRadius=4;
    assignBtn.layer.borderWidth=1;
    assignBtn.layer.borderColor=[UIColor lightGrayColor].CGColor;
    aboutBtn.layer.cornerRadius=4;
    aboutBtn.layer.borderWidth=1;
    aboutBtn.layer.borderColor=[UIColor lightGrayColor].CGColor;
    currentPage=0;
    pageControl=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    CGPoint centerPoint=self.view.center;
    pageControl.center=CGPointMake(centerPoint.x, scorll.bounds.size.height-20+64);
    [pageControl addTarget:self action:@selector(pageControlChange) forControlEvents:UIControlEventValueChanged];
    pageControl.pageIndicatorTintColor=[UIColor whiteColor];
    pageControl.numberOfPages=4;
    pageControl.currentPage=0;
    pageControl.currentPageIndicatorTintColor=[UIColor redColor];
    for (NSInteger i=0; i<5; i++) {
        UIImageView*imageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*self.view.bounds.size.width, 0, self.view.bounds.size.width,130)];
        imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)i]];
        imageView.contentMode=UIViewContentModeScaleAspectFill;
        UITapGestureRecognizer*tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTap)];
        imageView.userInteractionEnabled=YES;
        [imageView addGestureRecognizer:tap];
        [scorll addSubview:imageView];
        
    }
    scorll.bounces=NO;
    scorll.showsHorizontalScrollIndicator=NO;
    scorll.contentSize=CGSizeMake(self.view.bounds.size.width*4,0);
    scorll.scrollEnabled=YES;
    scorll.pagingEnabled=YES;
    [self.view addSubview:pageControl];
    timer=[NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(timeCount) userInfo:nil repeats:YES];

}
#pragma mark-pageControl value change
-(void)pageControlChange
{
    currentPage=pageControl.currentPage;
    scorll.contentOffset=CGPointMake(pageControl.currentPage*self.view.bounds.size.width, 0);
}
-(void)imageTap
{
//    [phoneTextField resignFirstResponder];
//    [codeTextField resignFirstResponder];
}
#pragma mark-UIScorllView delegate methods
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    currentPage=(NSInteger)(scrollView.contentOffset.x/self.view.bounds.size.width);
    pageControl.currentPage=currentPage;
}
#pragma mark-NSTimer 
-(void)timeCount
{
    if (currentPage>=5) {
        currentPage=1;
        scorll.contentOffset=CGPointMake(currentPage*self.view.bounds.size.width, 0);
    }else
    {
        [UIView animateWithDuration:1.0f animations:^{
            scorll.contentOffset=CGPointMake(currentPage*self.view.bounds.size.width, 0);
        } completion:^(BOOL finished) {
        }];
    }
    
    if (currentPage==4) {
        pageControl.currentPage=0;
    }else
    {
        pageControl.currentPage=currentPage;
    }
    currentPage++;

    
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
- (IBAction)aboutBtnClicked:(UIButton *)sender {
    [self performSegueWithIdentifier:@"LJJAboutVC" sender:nil];
}

- (IBAction)assignBtnClicked:(UIButton *)sender {
    [self performSegueWithIdentifier:@"LJJAssignVC" sender:nil];
}

- (IBAction)publicBtnClicked:(UIButton *)sender {
    [self performSegueWithIdentifier:@"LJJCreditorPublishVC" sender:nil];
}
@end
