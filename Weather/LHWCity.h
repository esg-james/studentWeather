//
//  LHWCity.h
//  Weather
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LHWCity : NSObject

//weather attributes
@property (nonatomic, strong) NSString *weatherDescription; //this should be a summary of the current weather ie. it's pretty foggy out, careful while navigating your day!
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSDate *currentTime;
@property (nonatomic, assign) int currentTemp;
@property (nonatomic, assign) float precipitationChance;

- (instancetype) initWithWeatherIn: (NSString *)theCity withPrecipitationChance:(float)precipChance withSummary:(NSString *)overallWeather andTemp:(int)theTemp andDate:(NSDate *)theDate;



@end

NS_ASSUME_NONNULL_END
