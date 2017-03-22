//
//  ContextView.m
//  CoreGraphDemo
//
//  Created by Yioks-Mac on 17/3/22.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import "ContextView.h"

@implementation MyLayerDelegate

- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx {
    
    UIGraphicsPushContext(ctx);
    
    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,100,100)];
    
    [[UIColor blueColor] setFill];
    
    [p fill];
    
    UIGraphicsPopContext();
    
}

@end

@implementation ContextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //UIGraphicsGetCurrentContext();

    //UIGraphicsPushContext()
    //UIGraphicsPopContext()
    
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    [p fill];
    
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(100, 100, 100, 100));
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    CGContextFillPath(con);
    
    
}



@end
