//
//  FCAutoHeightTableViewCell.h
//  UnionCar
//
//  Created by Luigi on 2020/6/16.
//  Copyright © 2020 XiaMen Micro into digital information technology co., LTD. All rights reserved.
//

#import "FCTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface FCAutoHeightTableViewCell : FCTableViewCell
@property (nonatomic, strong) NSDictionary *info;
@property (nonatomic, strong) UICollectionView *collectionView;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
NS_ASSUME_NONNULL_END
