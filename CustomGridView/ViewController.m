//
//  ViewController.m
//  CustomGridView
//
//  Created by Kumaraswamy D R on 31/08/16.
//  Copyright © 2016 TechLeraner. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionView.h"


@interface ViewController ()
@property (nonatomic,strong) CustomCollectionView *customCollectionView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _customCollectionView = [[CustomCollectionView alloc]init];
    [self.view addSubview:_customCollectionView];
    
    
}
-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _customCollectionView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
}
@end
