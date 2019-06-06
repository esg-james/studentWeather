//
//  LHWDetailedViewController.m
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "LHWDetailedViewController.h"


@interface LHWDetailedViewController ()

@end

@implementation LHWDetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blueColor]];
    //details rects
    CGRect cityRect = CGRectMake(NSLayoutAttributeCenterX + 120.0, NSLayoutAttributeCenterY - 100.0f, 400.0f, 400.0f);
    
    CGRect summaryRect = CGRectMake(NSLayoutAttributeLeftMargin, NSLayoutAttributeNotAnAttribute, 400.0f, 400.0f);
    CGRect precipitationRect = CGRectMake(NSLayoutAttributeCenterX, NSLayoutAttributeCenterY + 60, 400.0f, 400.0f);
    CGRect tempRect = CGRectMake(NSLayoutAttributeRightMargin + 350.0f, NSLayoutAttributeNotAnAttribute, 400.0f, 400.0f);
    
    CGRect timeRect = CGRectMake(NSLayoutAttributeCenterX + 150.0f, NSLayoutAttributeCenterY + 60, 400.0f, 400.0f);
    
    //image rect
    CGRect imageRect = CGRectMake(NSLayoutAttributeLeftMargin + 30.0f, NSLayoutAttributeTop + 220.0, 80.0f, 50.0f);
    
    
    UILabel *cityLabel = [[UILabel alloc]initWithFrame:cityRect];
    UILabel *summaryLabel = [[UILabel alloc]initWithFrame:summaryRect];
    UILabel *tempLabel = [[UILabel alloc]initWithFrame:tempRect];
    UILabel *precipLabel = [[UILabel alloc]initWithFrame:precipitationRect];
    UILabel *timeLabel = [[UILabel alloc]initWithFrame:timeRect];
    
    UIImage *cloudy = [UIImage imageNamed:@"cloudy.png"];
    UIImageView *container = [[UIImageView alloc]initWithFrame:imageRect];
    [container setImage:cloudy];
    //[self.view addSubview:container];
    
    
    
    


    
    cityLabel.textColor = [UIColor yellowColor];
    cityLabel.text = _theCity.city;
    cityLabel.font =  [UIFont fontWithName:@"HelveticaNeue" size:36];
    
    summaryLabel.textColor = [UIColor yellowColor];
    summaryLabel.text = _theCity.weatherDescription;
    summaryLabel.font =  [UIFont fontWithName:@"HelveticaNeue" size:24];
    
    tempLabel.textColor = [UIColor yellowColor];
    tempLabel.text = [NSString stringWithFormat:@"%d",_theCity.currentTemp];
    tempLabel.font =  [UIFont fontWithName:@"HelveticaNeue" size:24];
    
    precipLabel.textColor = [UIColor yellowColor];
    precipLabel.text = [NSString stringWithFormat:@"%.1f",_theCity.precipitationChance];
    precipLabel.font =  [UIFont fontWithName:@"HelveticaNeue" size:24];
    
    timeLabel.textColor = [UIColor yellowColor];
    timeLabel.text = [NSString stringWithFormat:@"%@",_theCity.currentTime];
    timeLabel.font =  [UIFont fontWithName:@"HelveticaNeue" size:24];
    
    [self.view addSubview:cityLabel];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:tempLabel];
    [self.view addSubview:precipLabel];
    [self.view addSubview:timeLabel];
    
    

    
    // Do any additional setup after loading the view.
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
