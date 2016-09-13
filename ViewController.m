//
//  ViewController.m
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

//as linhas de separação das células não aparecem no modo visualização 50%

#import "ViewController.h"
#import "Users.h"
#import "DetailViewController.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController {
    NSArray *_tableData;
    NSArray *_userData;
}

    //NSArray *viewCount;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Users";
    _tableView.bounces = NO;
    
    _tableData = [Users list:@1];
}

//quantidade de linhas
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableData count];
}

//customzia a aparência das células
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    const NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    //texto principal
    cell.textLabel.text = [NSString stringWithFormat:@"ID: %@",[[_tableData objectAtIndex:indexPath.row] objectForKey:@"id"]];
    
    //texto detalhe
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",
                                                    [[_tableData objectAtIndex:indexPath.row] objectForKey:@"first_name"],
                                                    [[_tableData objectAtIndex:indexPath.row] objectForKey:@"last_name"]];
    
    //imagem
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL: [NSURL URLWithString: [[_tableData objectAtIndex: indexPath.row] objectForKey:@"avatar"]]]];
    
    //seta para detalhes
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

//definição das ações após a seleção da célula
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //allocate your view controller
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    
    detailViewController.selectedUser = [_tableData objectAtIndex:indexPath.row];
    NSLog(@"%@",[_tableData objectAtIndex:indexPath.row]);
                                                  
    //push it to the navigationController
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

/*
//altura da célula
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
