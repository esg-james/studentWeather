//
//  LHWCityViewController.h
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LHWDetailedViewController.h"
#import "LHWCity.h"

NS_ASSUME_NONNULL_BEGIN

@interface LHWCityViewController : UIViewController

@property (nonatomic, strong) LHWCity *theCity;
@property (nonatomic, strong) LHWDetailedViewController *detailedViewController;
- (void)showWeatherDetails;


@end

NS_ASSUME_NONNULL_END
