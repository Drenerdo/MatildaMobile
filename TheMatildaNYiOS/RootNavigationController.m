//
//  RootNavigationController.m
//  AvonzPassengerApp
//
//  Created by A. K. M. Saleh Sultan on 5/23/15.
//  Copyright (c) 2015 swordfish. All rights reserved.
//

#import "RootNavigationController.h"

@implementation RootNavigationController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognized:)]];
}


#pragma mark -
#pragma mark Gesture recognizer

- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController panGestureRecognized:sender];
}

@end
