//
//  DetailViewController.m
//  Onboard
//
//  Created by Taqtile on 09/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    return [tableData count];
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *TableIdentifier = @"TableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TableIdentifier];
    }
    
  //  cell.textLabel.text = [NSString stringWithFormat:@"ID: %@",[[tableData objectAtIndex:indexPath.row] objectForKey:@"id"]];
  //  cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",
    //                             [[tableData objectAtIndex:indexPath.row] objectForKey:@"first_name"],
   //                              [[tableData objectAtIndex:indexPath.row] objectForKey:@"last_name"]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
