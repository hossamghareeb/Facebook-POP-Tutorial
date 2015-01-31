//
//  FacebookButtonAnimationViewController.swift
//  POPSwiftDemo
//
//  Created by Hossam Ghareeb on 1/29/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class FacebookButtonAnimationViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var msgTextField: UITextField!

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
        var comment : String
        if range.length == 0
        {
            comment = "\(textField.text)\(string)"
        }
        else
        {
            comment = (textField.text as NSString).substringToIndex(countElements(textField.text) - range.length)
            
        }
        
        if countElements(comment) == 0
        {
            showLikeButton()
        }
        else
        {
            showSendButton()
        }
        return true
    }
    
    func showLikeButton()
    {
        
        self.likeButton.hidden = false;
        self.sendButton.hidden = true;
        let spin = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
        spin.fromValue = NSNumber(double: M_PI / 4.0)
        spin.toValue = NSNumber(int: 0)
        spin.springBounciness = 20.0
        spin.velocity = NSNumber(int: 10)
        self.likeButton.layer.pop_addAnimation(spin, forKey: "likeAnimation")
    }
    
    func showSendButton()
    {
        if self.sendButton.hidden
        {
            self.likeButton.hidden = true;
            self.sendButton.hidden = false;
            let spring = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            spring.velocity = NSValue(CGPoint: CGPointMake(8, 8))
            spring.springBounciness = 20
            self.sendButton.pop_addAnimation(spring, forKey: "sendAnimation")
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
