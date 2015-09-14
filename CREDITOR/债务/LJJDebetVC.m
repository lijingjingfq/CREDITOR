//
//  LJJDebetVC.m
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "LJJDebetVC.h"
#import "CollectionViewCell.h"
@interface LJJDebetVC ()

@end

@implementation LJJDebetVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"债务";
    self.automaticallyAdjustsScrollViewInsets=NO;
    dataSourceArr=@[@{SUB_IMAGE:@"Home.png",SUB_TITLE:@"债务转让"},@{SUB_IMAGE:@"config_set.png",SUB_TITLE:@"债务管理"},@{SUB_IMAGE:@"cloud.png",SUB_TITLE:@"债务申请"}];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark-UICollectionView delegate methods
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return dataSourceArr.count;
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(8, 8, 8, 8);
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((self.view.bounds.size.width-32)/3, (self.view.bounds.size.width-32)/3);
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell*cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    cell.thoumbImageView.image=[UIImage imageNamed:dataSourceArr[indexPath.row][SUB_IMAGE]];
    cell.titleLabel.text=dataSourceArr[indexPath.row][SUB_TITLE];
    cell.layer.borderWidth=0.3;
    cell.layer.cornerRadius=4;
    cell.layer.borderColor=[UIColor lightGrayColor].CGColor;
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}
@end
