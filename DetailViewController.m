//
//  DetailViewController.m
//  Onboard
//
//  Created by Taqtile on 09/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "DetailViewController.h"
#import "Users.h"

@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DetailViewController

    NSArray *_dictValues;
    NSArray *_dictKeys;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"User";
    
    _dictValues = [NSArray arrayWithArray:[_selectedUser allValues]];
    
    //_dictKeys = [NSArray arrayWithArray:[_selectedUser allKeys]];
    _dictKeys = @[@"ID",@"First Name",@"Last Name",@"Avatar"];
    
    //remove células vazias no final
    //_tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    _tableView.bounces = NO;
    
//  _tableView.backgroundView = nil;
//  _tableView.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1.0];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_selectedUser count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"DETAILS";
}

/*
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
*/
/*
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    
    // Text Color
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor lightGrayColor]];
    [header.textLabel setFont:[UIFont boldSystemFontOfSize:10]];
    
}
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[_dictKeys objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[_dictValues objectAtIndex:indexPath.row]];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
