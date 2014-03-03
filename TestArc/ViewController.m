//
//  ViewController.m
//  TestArc
//
//  Created by mamawang on 14-2-20.
//  Copyright (c) 2014年 mamawang. All rights reserved.
//

#import "ViewController.h"
#import "Topic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Topic *topic = [[Topic alloc]init];
    [topic operation];
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:1];
    [array addObject:@"1"];
    [array addObject:@"2"];
    [array addObject:@"3"];
    
    NSLog(@"array:%@",array);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
