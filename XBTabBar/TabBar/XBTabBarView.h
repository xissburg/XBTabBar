//
//  XBTabBarView.h
//  XBTabBarView
//
//  Created by xiss burg on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBTabBarView : UIView

@property (nonatomic, strong) UITabBarController *tabBarController;

+ (XBTabBarView *)setupTabBarViewOnTabBarController:(UITabBarController *)tabBarController;

- (IBAction)tabBarButtonAction:(UIButton *)sender;

@end
