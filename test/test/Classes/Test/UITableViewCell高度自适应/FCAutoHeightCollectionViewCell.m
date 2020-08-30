//
//  FCAutoHeightCollectionViewCell.m
//  UnionCar
//
//  Created by Luigi on 2020/6/16.
//  Copyright © 2020 XiaMen Micro into digital information technology co., LTD. All rights reserved.
//

#import "FCAutoHeightCollectionViewCell.h"

@implementation FCAutoHeightCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        self.backgroundColor = [UIColor blueColor];
        self.label.textColor = [UIColor whiteColor];
    } else {
        self.backgroundColor = [UIColor whiteColor];
        self.label.textColor = [UIColor blueColor];
    }
}

- (void)setupUI {
    
    self.backgroundColor = FCRandomColor;
    
    self.layer.borderColor = [UIColor blueColor].CGColor;
    self.layer.borderWidth = 0.5;
    
    self.label = [UILabel new];
    self.label.textColor = [UIColor blueColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    
    [self.contentView addSubview:self.label];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.centerX.centerY.offset(0);
        make.edges.equalTo(self.contentView);
        make.height.equalTo(@30);
    }];
}

@end
