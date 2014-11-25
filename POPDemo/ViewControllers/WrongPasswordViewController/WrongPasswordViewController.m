//
//  WrongPasswordViewController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 11/25/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "WrongPasswordViewController.h"

@interface WrongPasswordViewController ()
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation WrongPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)didClickOnLoginButton:(id)sender {
    
    [self performSelector:@selector(shake) withObject:nil afterDelay:0];
}

-(void)shake{
    POPSpringAnimation *shake = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    
    shake.springBounciness = 20;
    shake.velocity = @(3000);
    
    [self.passwordTextField.layer pop_addAnimation:shake forKey:@"shakePassword"];
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
