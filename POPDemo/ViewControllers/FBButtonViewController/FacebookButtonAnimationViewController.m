//
//  FacebookButtonAnimationViewController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 11/24/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "FacebookButtonAnimationViewController.h"

@interface FacebookButtonAnimationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *msgTextField;
@property (weak, nonatomic) IBOutlet UIButton *likeButton;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;

@end

@implementation FacebookButtonAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *comment;
    if(range.length == 0)
    {
        comment = [NSString stringWithFormat:@"%@%@", textField.text, string];
    }
    else
    {
        comment = [textField.text substringToIndex:textField.text.length - range.length];
    }
    
    if (comment.length == 0) {
        //Show like
        [self showLikeButton];
    }
    else
    {
        //Show Send
        [self showSendButton];
    }
    return YES;
}

-(void)showLikeButton
{
    self.likeButton.hidden = NO;
    self.sendButton.hidden = YES;
    
    POPSpringAnimation *spin = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
   
    spin.fromValue = @(M_PI / 4);
    spin.toValue = @(0);
    spin.springBounciness = 20;
    spin.velocity = @(10);
    [self.likeButton.layer pop_addAnimation:spin forKey:@"likeAnimation"];
}

-(void)showSendButton
{
    if (self.sendButton.isHidden) {
        
        self.likeButton.hidden = YES;
        self.sendButton.hidden = NO;
        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        
        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(8, 8)];
        sprintAnimation.springBounciness = 20.f;
        [self.sendButton pop_addAnimation:sprintAnimation forKey:@"sendAnimation"];
    }
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
