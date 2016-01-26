//
//  SwipeMenuViewController.m
//  AvonzPassengerApp
//
//  Created by A. K. M. Saleh Sultan on 5/23/15.
//  Copyright (c) 2015 swordfish. All rights reserved.
//

#import "SwipeMenuViewController.h"
#import "HomeViewController.h"
#import "RootNavigationController.h"

@interface SwipeMenuViewController ()
{
    NSArray *menuArray;
}
@end

@implementation SwipeMenuViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    menuArray = [[NSArray alloc]initWithObjects:@"Account Info", @"Linked Accounts", @"Calendars", @"Log Out", nil];
    
    self.tableView.separatorColor = [UIColor colorWithRed:150/255.0f green:161/255.0f blue:177/255.0f alpha:1.0f];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    self.tableView.backgroundColor = [UIColor blackColor];
    self.tableView.alpha = 0.7f;
    
    
    self.tableView.tableHeaderView = ({
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 184.0f)];
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 40, 100, 100)];
//        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
//        imageView.image = [UIImage imageNamed:@"user_image.png"];
//        imageView.layer.masksToBounds = YES;
//        imageView.layer.cornerRadius = 50.0;
//        imageView.layer.borderColor = [UIColor whiteColor].CGColor;
//        imageView.layer.borderWidth = 3.0f;
//        imageView.layer.rasterizationScale = [UIScreen mainScreen].scale;
//        imageView.layer.shouldRasterize = YES;
//        imageView.clipsToBounds = YES;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
        label.text = @"MATILDA";
        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
        [label sizeToFit];
        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
//        [view addSubview:imageView];
        [view addSubview:label];
        view;
    });
}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    RootNavigationController *navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"RootNavigationControl"];
    
    if (indexPath.row == 0) {
        HomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
        navigationController.viewControllers = @[homeViewController];
    }
    else if(indexPath.row == 1){
        
    }
    else if(indexPath.row == 2){
        
    }
    else if(indexPath.row == 3) {
        
    }
    
    self.frostedViewController.contentViewController = navigationController;
    [self.frostedViewController hideMenuViewController];
}


- (void)rpcClientResponseDictionary:(NSDictionary *)responseDic {
    NSLog(@"deleted user location : %@", responseDic);
}




#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return [menuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(25, 5, 140, 35)];
    lbl.textColor = [UIColor whiteColor];//[UIColor colorWithRed:14/255 green:255/255 blue:1.0 alpha:1.0];
    lbl.text = menuArray[indexPath.row];
    [cell.contentView addSubview:lbl];
    
//    [UIColor colorWithRed:50/255 green:1.0 blue:207/255 alpha:1.0];
    return cell;
}

@end