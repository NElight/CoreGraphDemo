//
//  ViewController.m
//  CoreGraphDemo
//
//  Created by Yioks-Mac on 17/3/15.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //开启图片上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 1);
    UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
