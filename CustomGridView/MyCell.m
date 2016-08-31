//
//  MyCell.m
//  CustomGridView
//
//  Created by Kumaraswamy D R on 31/08/16.
//  Copyright © 2016 TechLeraner. All rights reserved.
//

#import "MyCell.h"


@implementation MyCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _myImageView = [[UIImageView alloc]initWithFrame:self.contentView.frame];
        _myImageView.image = [UIImage imageNamed:@"im.jpeg"];
        [self.contentView addSubview:_myImageView];
    }
    return self;
}



@end