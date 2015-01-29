//
//  ExampleCell.swift
//  POPSwiftDemo
//
//  Created by Hossam Ghareeb on 1/29/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class ExampleCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.accessoryType  = UITableViewCellAccessoryType.DisclosureIndicator
        self.selectionStyle = UITableViewCellSelectionStyle.None
        self.textLabel.font = UIFont(name: "Avenir-Light", size: 24)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        
        if self.highlighted
        {
            let scaleAnimation = POPBasicAnimation(propertyNamed: kPOPViewScaleXY)
            scaleAnimation.duration = 0.1
            scaleAnimation.toValue = NSValue(CGPoint: CGPointMake(1, 1))
            self.textLabel.pop_addAnimation(scaleAnimation, forKey: "scalingUp")
        }
        else
        {
            let springAnimation = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            springAnimation.toValue = NSValue(CGPoint: CGPointMake(0.9, 0.9))
            springAnimation.velocity = NSValue(CGPoint: CGPointMake(2, 2))
            springAnimation.springBounciness = 20.0
            self.textLabel.pop_addAnimation(springAnimation, forKey: "springAnimation")
        }
    }

}
