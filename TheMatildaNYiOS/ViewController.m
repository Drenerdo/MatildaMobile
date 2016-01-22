//
//  ViewController.m
//  TheMatildaNYiOS
//
//  Created by A. K. M. Saleh Sultan on 1/21/16.
//  Copyright © 2016 Swordfish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *scheduleItemArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return scheduleItemArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"imageCustomCell_Time";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


#pragma mark - UITableView Delegate
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField.tag == 1){
        
    }
    else {
        
    }
}

@end
