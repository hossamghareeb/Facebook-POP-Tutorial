//
//  CustomModalViewController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 12/14/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "CustomModalViewController.h"

@implementation CustomModalViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.layer.cornerRadius = 8.f;
}

- (IBAction)didClickOnClose:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
