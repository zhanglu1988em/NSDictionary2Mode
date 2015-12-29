//
//  Car.h
//  KvcTestDemo
//
//  Created by wbder on 15/12/29.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property NSString* name;
@property NSString* icon;

-(instancetype) initWithDict:(NSDictionary*) dict;
+(instancetype) carWithDict: (NSDictionary*) dict;
+(NSArray*) carsWithArry: (NSArray*)arry;


@end
