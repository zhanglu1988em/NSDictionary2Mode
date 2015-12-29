//
//  CarGroup.h
//  KvcTestDemo
//
//  Created by wbder on 15/12/29.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject


@property NSArray *cars;
@property NSString* title;


-(instancetype) initWithDict: (NSDictionary*) dict;
+(instancetype) carGroupWithDict: (NSDictionary*) dict;
+(NSArray*) carGroups;

@end
