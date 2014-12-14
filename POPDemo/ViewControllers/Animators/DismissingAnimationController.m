//
//  DismissingAnimationController.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 12/14/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "DismissingAnimationController.h"
#import "POP.h"

@implementation DismissingAnimationController

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIView *toView = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey].view;
    toView.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
    toView.userInteractionEnabled = YES;
    
    UIView *fromView = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey].view;
    
    
    POPBasicAnimation *closeAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    closeAnimation.toValue = @(-fromView.layer.position.y);
    [closeAnimation setCompletionBlock:^(POPAnimation *anim, BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
    
    POPSpringAnimation *scaleDownAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    scaleDownAnimation.springBounciness = 20;
    scaleDownAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
    
    [fromView.layer pop_addAnimation:closeAnimation forKey:@"closeAnimation"];
    [fromView.layer pop_addAnimation:scaleDownAnimation forKey:@"scaleDown"];
 
}

@end
