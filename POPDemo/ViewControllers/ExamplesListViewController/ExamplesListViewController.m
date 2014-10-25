//
//  ExamplesListViewController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 10/20/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "ExamplesListViewController.h"

@interface ExamplesListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *examplesTableView;

@property (nonatomic, strong) NSArray *examples;

@end

@implementation ExamplesListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.examples = @[@"Example 1", @"Example 2", @"Example 3", @"Example 4", @"Example 5"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.examples.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExampleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exampleCell"];
    cell.textLabel.text = self.examples[indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
