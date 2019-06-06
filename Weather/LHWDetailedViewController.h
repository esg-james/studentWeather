//
//  LHWDetailedViewController.h
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LHWCity.h"

NS_ASSUME_NONNULL_BEGIN

@interface LHWDetailedViewController : UIViewController

@property (nonatomic, strong) UINavigationController *theNavigationController;
@property (nonatomic, strong) LHWCity *theCity;
@property UIView *framingView;

@end

NS_ASSUME_NONNULL_END
