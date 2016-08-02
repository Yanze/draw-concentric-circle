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
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}



@end
