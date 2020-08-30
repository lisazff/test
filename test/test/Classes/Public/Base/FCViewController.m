//
//  FCViewController.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "FCViewController.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (instancetype)init {
    if (self = [super init]) {
        self.automaticallyAdjustsScrollViewInsets = false;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //init
    self.view.backgroundColor = FCRandomColor;
}

@end
