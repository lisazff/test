//
//  FCTabBarController.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCTabBarController.h"
#import "FCNavigationController.h"

@implementation FCViewControllerModel
@end

// ========== ========== ========== ========== ==========

@interface FCTabBarController ()

@end

@implementation FCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FCViewControllerModel *model = [FCViewControllerModel new];
    model.className = @"FCHomeViewController";
    model.title = @"首页";
    model.normalImage = @"";
    model.selectedImage = @"";
    [self addChildViewControllerModel:model];
    
}

- (void)addChildViewControllerModel:(FCViewControllerModel *)model {
    
    UIViewController *vc = [NSClassFromString(model.className) new];
    vc.title = model.title;
    FCNavigationController *nc = [[FCNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nc];
}
@end
