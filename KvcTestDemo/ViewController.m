//
//  ViewController.m
//  KvcTestDemo
//
//  Created by wbder on 15/12/29.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"

@interface ViewController ()

@property (nonatomic ,strong) NSArray *carGroup;

@end

@implementation ViewController

-(NSArray* ) carGroup
{
    if (_carGroup == nil) {
        _carGroup = [CarGroup carGroups];
    }
    return _carGroup;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@",self.carGroup);
}


@end
