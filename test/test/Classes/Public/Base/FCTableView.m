//
//  FCTableView.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCTableView.h"

@implementation FCTableView

+ (instancetype)tableView {
    FCTableView *view = [[FCTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    view.separatorStyle = UITableViewCellAccessoryNone;
    view.backgroundColor = FCRandomColor;
    view.estimatedRowHeight = 50;
    view.rowHeight = UITableViewAutomaticDimension;
    //view.estimatedRowHeight = 0;
    view.estimatedSectionHeaderHeight = 0;
    view.estimatedSectionFooterHeight = 0;
//    if(@available(iOS 11.0, *)) {
//        view.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    }
    return view;;
}
@end
