//
//  LJJDebetVC.h
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJJDebetVC : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{

    IBOutlet UICollectionView *collection;
    NSArray*dataSourceArr;
}

@end
