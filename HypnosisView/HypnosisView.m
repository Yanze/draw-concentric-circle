//
//  HypnosisView.m
//  HypnosisView
//
//  Created by yanze on 7/29/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

-(instancetype) initWithFrame:(CGRect)frame {
    NSLog(@"inView");
    self = [super initWithFrame:frame];
    
    if(self){
        // All HypnosisViews starts with a clear backgound color;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    // figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The largest circle will circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    // draw circle using UIBezierPath class, draw
    // lines and curves that you can use to make shapes, like circles.
    UIBezierPath *path =[[UIBezierPath alloc]init];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    // define the line width
    path.lineWidth = 10;
    //change the line color
    [[UIColor lightGrayColor]setStroke];
    
    // draw the line
    [path stroke];
    
    
}



@end
