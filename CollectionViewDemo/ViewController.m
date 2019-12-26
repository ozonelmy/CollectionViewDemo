//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by ozonelmy on 2019/10/29.
//  Copyright © 2019 tencent. All rights reserved.
//

#import "ViewController.h"
#import "ItemViewLayout.h"
#import "ItemCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UICollectionViewFlowLayout  *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *cv = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    cv.backgroundColor = [UIColor clearColor];
    [cv registerClass:[ItemCell class] forCellWithReuseIdentifier:@"cell"];
    [cv registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"view"];
    cv.dataSource = self;
    cv.delegate = self;
    cv.frame = self.view.bounds;
    [self.view addSubview:cv];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    ItemCell *cell = (ItemCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    [cell setIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
////    return CGSizeMake(100, 130);
//    if (0 == [indexPath row] && 0 == [indexPath section]) {
//        return CGSizeMake(375, 130);
//    }
//    return CGSizeMake(100, 130);
//    arc4random() % 375
    uint32_t widht = 0;
    while (widht < 30) {
        widht = arc4random() % 375;
    }
    return CGSizeMake(widht, 130);
}

//设置每个item水平间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

//设置每个item垂直间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    UICollectionReusableView *reuseableView = (UICollectionReusableView *)[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"view" forIndexPath:indexPath];
    reuseableView.frame = CGRectMake(0, 0, 375, 100);
    return reuseableView;
}




@end
