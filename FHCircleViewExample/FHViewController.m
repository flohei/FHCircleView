//
//  FHViewController.m
//  FHCircleView
//
//  Created by Florian Heiber on 13.03.13.
//  Copyright (c) 2013 rootof.net Heiber & Wiewel GbR. All rights reserved.
//

#import "FHViewController.h"
#import "FHCircleView.h"

@interface FHViewController ()

@end

@implementation FHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    FHCircleView *blueCircleView = [FHCircleView new];
    [blueCircleView setCenter:CGPointMake(115, 200)];
    [[self view] addSubview:blueCircleView];
    
    FHCircleView *redCircleView = [[FHCircleView alloc] initWithDiameter:20];
    [redCircleView setColor:[UIColor redColor]];
    [redCircleView setCenter:CGPointMake(150, 200)];
    [[self view] addSubview:redCircleView];
    
    FHCircleView *greenCircleView = [[FHCircleView alloc] initWithDiameter:30 color:[UIColor greenColor]];
    [greenCircleView setCenter:CGPointMake(195, 200)];
    [[self view] addSubview:greenCircleView];
}

@end
