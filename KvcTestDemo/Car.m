//
//  Car.m
//  KvcTestDemo
//
//  Created by wbder on 15/12/29.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import "Car.h"

@implementation Car

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) carWithDict: (NSDictionary*) dict
{
    return  [[self alloc] initWithDict:dict];
}

+(NSArray*) carsWithArry: (NSArray*)arry
{
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in arry) {
        [arryM addObject:[self carWithDict:dict]];
    }
    return arryM;
}


-(NSString*) description
{
    return  [NSString stringWithFormat:@"%@ -- %p {name: %@ ,icon: %@}",self.class,self,self.name,self.icon];
}

@end
