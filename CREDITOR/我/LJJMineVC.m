//
//  LJJMineVC.m
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJMineVC.h"

@interface LJJMineVC ()

@end

@implementation LJJMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"我";
    self.automaticallyAdjustsScrollViewInsets=NO;
    dataSourceArr=@[@[@{SUB_IMAGE:@"menu_icon_6",SUB_TITLE:@"我的账户",DETAIL_TITLE:@"点击登录"}],@[@{SUB_IMAGE:@"menu_icon_28",SUB_TITLE:@"我的债权",DETAIL_TITLE:@""},@{SUB_IMAGE:@"menu_icon_5",SUB_TITLE:@"我的债务",DETAIL_TITLE:@""}],@[@{SUB_IMAGE:@"menu_icon_1",SUB_TITLE:@"全民介绍",DETAIL_TITLE:@""},@{SUB_IMAGE:@"menu_icon_9",SUB_TITLE:@"设置",DETAIL_TITLE:@""}]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark-UITableView delegate methods
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section!=0) {
        return 50.0f;
    }
    return 10.0f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return dataSourceArr.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataSourceArr[section] count];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.imageView.image=[UIImage imageNamed:dataSourceArr[indexPath.section][indexPath.row][SUB_IMAGE]];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text=dataSourceArr[indexPath.section][indexPath.row][SUB_TITLE];
    cell.detailTextLabel.text=dataSourceArr[indexPath.section][indexPath.row][DETAIL_TITLE];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.section) {
        case 0:
        {
            [self performSegueWithIdentifier:@"LJJLoginVC" sender:nil];
        }
            break;
         case 1:
        {
        
        }
            break;
        case 2:
        {
        
        }
            break;
        default:
            break;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
