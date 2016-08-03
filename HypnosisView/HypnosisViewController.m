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
//    bigRect.size.height *= 2.0;
    
    // cretae a screen-sized scrolll view and add it to the window
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    // force the scroll view to snap its viewing port to one of the views
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    // create a screen-sized hypnosis view and add it to the scroll view
    HypnosisView *hypnosisView = [[HypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:hypnosisView];
    
    // addd a second screen-sized hypnosis view just off screen to the right
    screenRect.origin.x += screenRect.size.width;
    HypnosisView *anotherView = [[HypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    // tells the scroll view how big its content area is
    scrollView.contentSize = bigRect.size ;
    
}


@end
