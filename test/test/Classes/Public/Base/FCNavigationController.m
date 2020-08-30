//
//  FCNavigationController.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCNavigationController.h"

@interface FCNavigationController ()

@end

@implementation FCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    viewController.hidesBottomBarWhenPushed = (self.viewControllers.count > 0);
    [super pushViewController:viewController animated:animated];
}
@end
