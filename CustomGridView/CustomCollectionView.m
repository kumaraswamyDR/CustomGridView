//
//  CustomCollectionView.m
//  CustomGridView
//
//  Created by Kumaraswamy D R on 31/08/16.
//  Copyright © 2016 TechLeraner. All rights reserved.
//

#import "CustomCollectionView.h"
#import "MyCell.h"

@interface CustomCollectionView()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong) UICollectionView *collectionView;
@property (strong, nonatomic) UIImage *myImage;
@end

@implementation CustomCollectionView

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.myImage = [UIImage imageNamed:@"apple"];
        UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
        _collectionView=[[UICollectionView alloc]initWithFrame:self.frame collectionViewLayout:flowLayout];
        [_collectionView setDataSource:self];
        [_collectionView setDelegate:self];
        [_collectionView setBackgroundColor:[UIColor grayColor]];
        [self addSubview:_collectionView];
        [_collectionView registerClass:[MyCell class] forCellWithReuseIdentifier:@"cellIdent"];
    }
    return self;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 7;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.frame.size.width*0.3,self.frame.size.width*0.3);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdent" forIndexPath:indexPath];
    cell.layer.cornerRadius = 15;
    cell.backgroundColor = [UIColor redColor];
    
    return cell;
}
-(void)layoutSubviews
{
    
    [super layoutSubviews];
    _collectionView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}


@end
