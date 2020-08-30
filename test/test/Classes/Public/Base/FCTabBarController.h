//
//  FCTabBarController.h
//  test
//
//  Created by fccoder on 2020/7/7.
//  Copyright © 2020 fccoder. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FCViewControllerModel : NSObject
@property (nonatomic, copy) NSString *className;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *normalImage;
@property (nonatomic, copy) NSString *selectedImage;

@end

@interface FCTabBarController : UITabBarController

@end

NS_ASSUME_NONNULL_END
