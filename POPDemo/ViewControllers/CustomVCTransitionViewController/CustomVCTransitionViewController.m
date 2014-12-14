//
//  CustomVCTransitionViewController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 12/14/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "CustomVCTransitionViewController.h"
#import "CustomModalViewController.h"

#import "PresentingAnimationController.h"
#import "DismissingAnimationController.h"

@implementation CustomVCTransitionViewController


- (IBAction)didClickOnPresent:(id)sender {
    
    CustomModalViewController *modalVC = [self.storyboard instantiateViewControllerWithIdentifier:@"customModal"];
    
    
    modalVC.transitioningDelegate = self;

    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    [self.navigationController presentViewController:modalVC animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitionDelegate -

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return [[PresentingAnimationController alloc] init];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [[DismissingAnimationController alloc] init];
}



@end
