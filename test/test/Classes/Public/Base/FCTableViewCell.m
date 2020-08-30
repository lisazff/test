//
//  FCTableViewCell.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCTableViewCell.h"

@implementation FCTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    
    FCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([self class])];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.contentView.backgroundColor = FCRandomColor;
}
@end
