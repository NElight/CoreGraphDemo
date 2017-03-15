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
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"比赛分类头部"]];
    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    [self.view addSubview:imageView];
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, NO, 0.0);
    [imageView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width / 2.0, 200), NO, 0);
    [image drawAtPoint:CGPointMake(-self.view.bounds.size.width / 2.0, 0)];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageView *imageView2 = [[UIImageView alloc]initWithImage:image];
    imageView2.frame = CGRectMake(0, 300, self.view.bounds.size.width / 2, 200);
    [self.view addSubview:imageView2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
