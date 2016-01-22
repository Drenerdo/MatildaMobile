//
//  ViewController.h
//  TheMatildaNYiOS
//
//  Created by A. K. M. Saleh Sultan on 1/21/16.
//  Copyright © 2016 Swordfish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate >

@property(nonatomic, weak) IBOutlet UITableView *calenderList;

@end

