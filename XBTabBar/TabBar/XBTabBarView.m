//
//  XBTabBarView.m
//  XBTabBarView
//
//  Created by xiss burg on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XBTabBarView.h"

#define kButtonTagBase 1003

@interface XBTabBarView ()

@property (nonatomic, assign) UIButton *selectedButton;

@end

@implementation XBTabBarView

@synthesize tabBarController, selectedButton;

- (void)awakeFromNib
{
    self.selectedButton = (UIButton *)[self viewWithTag:kButtonTagBase];
    self.selectedButton.selected = YES;
}

#pragma mark - Methods

+ (XBTabBarView *)setupTabBarViewOnTabBarController:(UITabBarController *)tabBarController
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(XBTabBarView.class) bundle:nil];
    XBTabBarView *tabBarView = (XBTabBarView *)[[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    tabBarView.tabBarController = tabBarController;
    
    CGRect r = tabBarView.frame;
    r.origin.y = 110;
    tabBarView.frame = r;
    tabBarView.transform = CGAffineTransformMakeRotation(M_PI/6);
    
    tabBarController.tabBar.alpha = 0;
    [tabBarController.view insertSubview:tabBarView aboveSubview:tabBarController.tabBar];
    
    UIView *transitionView = [tabBarController.view.subviews objectAtIndex:0];
    r = transitionView.frame;
    r.size.height = [UIScreen mainScreen].bounds.size.height;
    transitionView.frame = r;
    
    return tabBarView;
}

#pragma mark - Button Actions

- (IBAction)tabBarButtonAction:(UIButton *)sender
{
    self.selectedButton.selected = NO;
    self.selectedButton = sender;
    self.selectedButton.selected = YES;
    NSUInteger newIndex = self.selectedButton.tag - kButtonTagBase;
    [self.tabBarController setSelectedIndex:newIndex];
}

@end
