//
//  ViewController.m
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "ViewController.h"
#import "Users.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UINavigationBar *navBar;
@property (strong, nonatomic) IBOutlet UITableView *tabView;

@end

@implementation ViewController

    NSArray *tableData;
    NSArray *myArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navBar.topItem.title = @"Users";
    self.tabView.bounces = NO;
    
    tableData = [Users list:@1];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *TableIdentifier = @"TableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TableIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"ID: %@",[[tableData objectAtIndex:indexPath.row] objectForKey:@"id"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",
                                                    [[tableData objectAtIndex:indexPath.row] objectForKey:@"first_name"],
                                                    [[tableData objectAtIndex:indexPath.row] objectForKey:@"last_name"]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //DetailViewController *detailViewController;
    //UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    //[myArray addObject: [tableData objectAtIndex:indexPath.row]];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
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
