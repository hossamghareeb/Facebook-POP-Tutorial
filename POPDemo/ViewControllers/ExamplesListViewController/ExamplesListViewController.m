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
    
    self.examples = @[@"Facebook Like & Send", @"Wrong Password", @"Example 3", @"Example 4", @"Example 5"];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"openFB" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"openWrongPass" sender:self];
            
        default:
            break;
    }
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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0;
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
