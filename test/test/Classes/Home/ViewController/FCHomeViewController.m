//
//  FCHomeViewController.m
//  test
//
//  Created by fccoder on 2020/7/13.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCHomeViewController.h"
#import "FCAutoHeightViewController.h"

@interface FCHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *list;
@end

@implementation FCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.list = @[
        @{
            @"title" : @"UITableViewCell高度自适应",
            @"controller" : @"FCAutoHeightViewController",
        },
    ];
    
    FCTableView *table = [FCTableView tableView];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.list.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *info = self.list[indexPath.row];
    NSString *title = info[@"title"];
    
    FCTableViewCell *cell = [FCTableViewCell cellWithTableView:tableView];
    cell.textLabel.text = title;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *info = self.list[indexPath.row];
    NSString *controller = info[@"controller"];
    
    FCViewController *vc = [NSClassFromString(controller) new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
