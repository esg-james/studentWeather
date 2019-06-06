//
//  LHWCityViewController.m
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"

@interface LHWCityViewController ()

@end

@implementation LHWCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.theCity.city;
    CGRect rect = CGRectMake(100.0f, 100.0f, 120.0f, 120.0f);
    CGRect rect2 = CGRectMake(140.0f, 140.0f, 180.0f, 180.0f);
//    CGRect rect3 = CGRectMake(140.0f, 140.0f, 180.0f, 180.0f);
    UILabel *cityLabel = [[UILabel alloc]initWithFrame:rect];
    
    cityLabel.textColor = [UIColor yellowColor];
    cityLabel.text = [NSString stringWithFormat:@"%d",_theCity.currentTemp];
    [self.view addSubview:cityLabel];
    UIButton *theButton = [[UIButton alloc]initWithFrame:rect2];
    theButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:theButton];
    
    [theButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    
   // LHWDetailedViewController *theWeatherDetails = [[LHWDetailedViewController alloc]init];
    // Do any additional setup after loading the view.
}

- (void)showWeatherDetails {
    
    self.detailedViewController = [[LHWDetailedViewController alloc]init];
    self.detailedViewController.theCity = self.theCity;
    
    [self.navigationController pushViewController:self.detailedViewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
