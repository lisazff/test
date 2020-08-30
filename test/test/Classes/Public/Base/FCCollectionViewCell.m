//
//  FCCollectionViewCell.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCCollectionViewCell.h"

@implementation FCCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.backgroundColor = FCRandomColor;
}
@end
