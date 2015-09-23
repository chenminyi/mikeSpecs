//
//  LeoViewController.m
//  mikeLib
//
//  Created by Mike Chen on 09/22/2015.
//  Copyright (c) 2015 Mike Chen. All rights reserved.
//

#import "LeoViewController.h"
#import "UIComposeView.h"
#import <PureLayout/PureLayout.h>

@interface LeoViewController ()

@end

@implementation LeoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIComposeView* composeView = [UIComposeView newAutoLayoutView];
    [self.view addSubview:composeView];
    [composeView autoSetDimensionsToSize:CGSizeMake(300, 300)];
    [composeView autoCenterInSuperview];
    composeView.backgroundColor = [UIColor blackColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
