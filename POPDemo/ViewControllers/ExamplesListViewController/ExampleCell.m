//
//  ExampleCell.m
//  POPDemo
//
//  Created by Hossam Ghareeb on 10/20/14.
//  Copyright (c) 2014 Hossam Ghareeb. All rights reserved.
//

#import "ExampleCell.h"

@implementation ExampleCell

- (void)awakeFromNib {
    // Initialization code
    
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.textLabel.font = [UIFont fontWithName:@"Avenir-Light" size:24];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    if (self.highlighted) {
        POPBasicAnimation *scaleAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scaleAnimation.duration = 0.1;
        scaleAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        [self.textLabel pop_addAnimation:scaleAnimation forKey:@"scalingUp"];
        
        
        
    } else {
        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(0.9, 0.9)];
        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
        sprintAnimation.springBounciness = 20.f;
        [self.textLabel pop_addAnimation:sprintAnimation forKey:@"springAnimation"];
    }
}


@end
