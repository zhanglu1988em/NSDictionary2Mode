//
//  CarGroup.m
//  KvcTestDemo
//
//  Created by wbder on 15/12/29.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import "CarGroup.h"

@implementation CarGroup

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) carGroupWithDict: (NSDictionary*) dict
{
    return  [[self alloc] initWithDict:dict];
}

+(NSArray*) carGroups
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil];
    NSArray *arry = [[NSArray alloc] initWithContentsOfFile:path];
    
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in arry) {
        [arryM addObject:[self carGroupWithDict:dict]];
    }
    return arryM;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"<%@: %p> {title: %@, cars: %@}",self.class,self,self.title,self.cars];
}


@end
