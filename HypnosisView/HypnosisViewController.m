//
//  HypnosisViewController.m
//  HypnosisView
//
//  Created by yanze on 7/29/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import "HypnosisViewController.h"


@interface HypnosisViewController ()


@end

@implementation HypnosisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // create CGRects for frames
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    
    // cretae a screen-sized scrolll view and add it to the window
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.view addSubview:scrollView];
    
    
    // create a super-sized hypnosis view and add it to the scroll view
    HypnosisView *hypnosisView = [[HypnosisView alloc]initWithFrame:bigRect];
    [scrollView addSubview:hypnosisView];
    
    // tells the scroll view how big its content area is
    scrollView.contentSize = bigRect.size ;
    
}


@end
