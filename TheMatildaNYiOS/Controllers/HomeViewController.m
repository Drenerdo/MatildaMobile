//
//  HomeViewController.m
//  TheMatildaNYiOS
//
//  Created by A. K. M. Saleh Sultan on 1/25/16.
//  Copyright © 2016 Swordfish. All rights reserved.
//

#import "HomeViewController.h"
#import "REFrostedViewController.h"

@implementation HomeViewController

- (void) viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showMenu
{
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    [self.frostedViewController presentMenuViewController];
}

@end
