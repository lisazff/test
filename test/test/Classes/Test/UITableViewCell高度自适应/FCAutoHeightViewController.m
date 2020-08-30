//
//  FCAutoHeightViewController.m
//  test
//
//  Created by fccoder on 2020/7/30.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCAutoHeightViewController.h"
#import "FCAutoHeightTableViewCell.h"

@interface FCAutoHeightViewController ()<UITableViewDataSource>
@property (nonatomic, strong) FCTableView *tableView;
@property (nonatomic, strong) NSArray<NSDictionary *> *list;
@end

@implementation FCAutoHeightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"非必填信息";
    
    self.tableView = [FCTableView tableView];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.offset(0);
    }];
   
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.list.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *list = self.list[section][@"list"];
    return list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *info = self.list[indexPath.section][@"list"][indexPath.row];
    
    FCAutoHeightTableViewCell *cell = [FCAutoHeightTableViewCell cellWithTableView:tableView];
    cell.backgroundColor = [UIColor redColor];
    cell.info = info;
    return cell;
}

- (NSArray<NSDictionary *> *)list {
    if (!_list) {
        _list = @[
            @{
                @"title" : @"参数配置",
                @"list" : @[
                        @{
                            @"keys" : @[@"carDriverType",],
                            @"title" : @"驱动形式",
                            @"list" :@[
                                    @{@"title" : @"前置后驱"},
                                    @{@"title" : @"前置前驱"},
                                    @{@"title" : @"中置后驱"},
                                    @{@"title" : @"后置后驱"},
                                    @{@"title" : @"前置四驱"},
                                    @{@"title" : @"中置四驱"},
                                    @{@"title" : @"后置四驱"},
                                    @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carBodyType",],
                            @"title" : @"车体形式",
                            @"list" :@[
                                   @{@"title" : @"SUV"},
                                   @{@"title" : @"MPV"},
                                   @{@"title" : @"敞篷车"},
                                   @{@"title" : @"跑车"},
                                   @{@"title" : @"两厢车"},
                                   @{@"title" : @"三厢车"},
                                   @{@"title" : @"旅行车"},
                                   @{@"title" : @"皮卡"},
                                   @{@"title" : @"单厢"},
                                   @{@"title" : @"两厢半"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carOilSystem",],
                           @"title" : @"供油系统",
                           @"list" : @[
                                   @{@"title" : @"汽油"},
                                   @{@"title" : @"柴油"},
                                   @{@"title" : @"混合"},
                                   @{@"title" : @"电动"},
                                   @{@"title" : @"新能源"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                ],
            },
            @{
                @"title" : @"参数配置2",
                @"list" : @[
                        @{
                            @"keys" : @[@"carDriverType",],
                            @"title" : @"驱动形式",
                            @"list" :@[
                                    @{@"title" : @"前置后驱"},
                                    @{@"title" : @"前置前驱"},
                                    @{@"title" : @"中置后驱"},
                                    @{@"title" : @"后置后驱"},
                                    @{@"title" : @"前置四驱"},
                                    @{@"title" : @"中置四驱"},
                                    @{@"title" : @"后置四驱"},
                                    @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carBodyType",],
                            @"title" : @"车体形式",
                            @"list" :@[
                                   @{@"title" : @"SUV"},
                                   @{@"title" : @"MPV"},
                                   @{@"title" : @"敞篷车"},
                                   @{@"title" : @"跑车"},
                                   @{@"title" : @"两厢车"},
                                   @{@"title" : @"三厢车"},
                                   @{@"title" : @"旅行车"},
                                   @{@"title" : @"皮卡"},
                                   @{@"title" : @"单厢"},
                                   @{@"title" : @"两厢半"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carOilSystem",],
                           @"title" : @"供油系统",
                           @"list" : @[
                                   @{@"title" : @"汽油"},
                                   @{@"title" : @"柴油"},
                                   @{@"title" : @"混合"},
                                   @{@"title" : @"电动"},
                                   @{@"title" : @"新能源"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                ],
            },
            @{
                @"title" : @"参数配置2",
                @"list" : @[
                        @{
                            @"keys" : @[@"carDriverType",],
                            @"title" : @"驱动形式",
                            @"list" :@[
                                    @{@"title" : @"前置后驱"},
                                    @{@"title" : @"前置前驱"},
                                    @{@"title" : @"中置后驱"},
                                    @{@"title" : @"后置后驱"},
                                    @{@"title" : @"前置四驱"},
                                    @{@"title" : @"中置四驱"},
                                    @{@"title" : @"后置四驱"},
                                    @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carBodyType",],
                            @"title" : @"车体形式",
                            @"list" :@[
                                   @{@"title" : @"SUV"},
                                   @{@"title" : @"MPV"},
                                   @{@"title" : @"敞篷车"},
                                   @{@"title" : @"跑车"},
                                   @{@"title" : @"两厢车"},
                                   @{@"title" : @"三厢车"},
                                   @{@"title" : @"旅行车"},
                                   @{@"title" : @"皮卡"},
                                   @{@"title" : @"单厢"},
                                   @{@"title" : @"两厢半"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                        @{
                           @"keys" : @[@"carOilSystem",],
                           @"title" : @"供油系统",
                           @"list" : @[
                                   @{@"title" : @"汽油"},
                                   @{@"title" : @"柴油"},
                                   @{@"title" : @"混合"},
                                   @{@"title" : @"电动"},
                                   @{@"title" : @"新能源"},
                                   @{@"title" : @"其他"},
                            ],
                        },
                ],
            },
        ];
    }
    return _list;
}
@end
