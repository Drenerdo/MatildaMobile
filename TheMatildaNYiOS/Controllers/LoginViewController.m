//
//  LoginViewController.m
//  TheMatildaNYiOS
//
//  Created by A. K. M. Saleh Sultan on 1/25/16.
//  Copyright © 2016 Swordfish. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"

@implementation LoginViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
}

- (IBAction)onLoginBtAction:(id)sender {
    HomeViewController *home = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    [self.navigationController pushViewController:home animated:YES];
}

@end
