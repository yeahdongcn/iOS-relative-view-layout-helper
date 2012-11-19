//
//  YXDViewController.m
//  LayoutDemo
//
//  Created by Ye Xiaodong on 12-11-19.
//  Copyright (c) 2012 pdq. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "YXDViewController.h"
#import "YXDView.h"

@interface YXDViewController ()

@end

@implementation YXDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    YXDView *view = [[[YXDView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    view.backgroundColor = [UIColor yellowColor];
    view.layer.borderWidth = 1;
    view.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
