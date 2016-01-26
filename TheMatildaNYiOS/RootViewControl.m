//
//  RootViewControl.m
//  AvonzPassengerApp
//
//  Created by A. K. M. Saleh Sultan on 5/23/15.
//  Copyright (c) 2015 swordfish. All rights reserved.
//

#import "RootViewControl.h"

@implementation RootViewControl


- (void)awakeFromNib
{
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"RootNavigationControl"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
}

@end
