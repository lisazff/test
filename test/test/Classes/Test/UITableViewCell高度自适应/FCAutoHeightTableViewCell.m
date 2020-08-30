//
//  FCAutoHeightTableViewCell.m
//  UnionCar
//
//  Created by Luigi on 2020/6/16.
//  Copyright © 2020 XiaMen Micro into digital information technology co., LTD. All rights reserved.
//

#import "FCAutoHeightTableViewCell.h"
#import "FCAutoHeightCollectionViewCell.h"

@interface FCAutoHeightTableViewCell()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *bgView;

@end

@implementation FCAutoHeightTableViewCell

- (void)setInfo:(NSDictionary *)info {
    _info = info;
    
    self.titleLabel.text = info[@"title"];
    
    [self.collectionView reloadData];
    [self.collectionView layoutIfNeeded];
    [self.bgView layoutIfNeeded];
        
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority
{
    // 先对bgview进行布局,这里需对bgView布局后collectionView宽度才会准确
    self.bgView.frame = CGRectMake(0, 0, targetSize.width, 44);
    [self.bgView layoutIfNeeded];
    
    // 在对collectionView进行布局
    self.collectionView.frame = CGRectMake(0, 0, targetSize.width, 44);
    [self.collectionView layoutIfNeeded];
    
    // 由于这里collection的高度是动态的，这里cell的高度我们根据collection来计算
    CGSize collectionSize = self.collectionView.collectionViewLayout.collectionViewContentSize;
    CGFloat cotentViewH = collectionSize.height;
    
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, cotentViewH + 30);
}


- (void)setupUI {
    self.bgView = [UIView new];
    [self.contentView addSubview:self.bgView];
    
    //标题
    self.titleLabel = [UILabel new];
    self.titleLabel.backgroundColor = FCRandomColor;
    [self.bgView addSubview:self.titleLabel];
    [self.bgView addSubview:self.collectionView];
    
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.contentView);
    }];
    
    //标题
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.bgView.mas_top).offset(0);
        make.left.mas_equalTo(self.bgView.mas_left).offset(15);
        make.height.mas_equalTo(30);
    }];
    
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(0);
        make.left.right.bottom.mas_equalTo(self.bgView);
    }];
}

#pragma mark - <UICollectionViewDelegateFlowLayout>
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(105, 30);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 15, 10, 15);
}

#pragma mark - <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray *list = self.info[@"list"];
    return list.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *info = self.info[@"list"][indexPath.row];
    
    FCAutoHeightCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([FCAutoHeightCollectionViewCell class]) forIndexPath:indexPath];
    cell.label.text = info[@"title"];
    return cell;
}

#pragma mark - GET
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[UICollectionViewFlowLayout new]];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.scrollEnabled = NO;
        [_collectionView registerClass:[FCAutoHeightCollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([FCAutoHeightCollectionViewCell class])];
    }
    return _collectionView;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    FCAutoHeightTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([self class])];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setupUI];
    }
    return cell;
}
@end
