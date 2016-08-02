//
//  HypnosisView.m
//  HypnosisView
//
//  Created by yanze on 7/29/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

//-(instancetype) initWithFrame:(CGRect)frame {
//    NSLog(@"inView");
//    self = [super initWithFrame:frame];
//    
//    if(self){
//        self.backgroundColor = [UIColor clearColor];
//    }
//    return self;
//}

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    // figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // set radius
    float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    
    // draw circle using UIBezierPath class, draw
    // lines and curves that you can use to make shapes, like circles.
    UIBezierPath *path =[[UIBezierPath alloc]init];
    
    // add an arc to the path at center, with radius of radius
    // from 0 to 2*PI radians(a circle)
    // defined the path
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    // draw the line
    [path stroke];
    
    
}



@end
