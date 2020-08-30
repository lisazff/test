//
//  AppDelegate.m
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [NSClassFromString(@"FCTabBarController") new];
    [self.window makeKeyAndVisible];
    return YES;
    
}

@end
