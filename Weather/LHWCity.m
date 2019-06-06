//
//  LHWCity.m
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "LHWCity.h"

@implementation LHWCity

- (instancetype) initWithWeatherIn: (NSString *)theCity withPrecipitationChance:(float)precipChance withSummary:(NSString *)overallWeather andTemp:(int)theTemp andDate:(NSDate *)theDate {
    self = [super init];
    if(self) {
        _precipitationChance = precipChance;
        _city = theCity;
        _weatherDescription = overallWeather;
        _currentTemp = theTemp;
        _currentTime = theDate;
    }
    return self;
}





@end
