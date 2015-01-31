//
//  WrongPasswordViewController.swift
//  POPSwiftDemo
//
//  Created by Hossam Ghareeb on 1/31/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class WrongPasswordViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClickOnLoginButton(sender: AnyObject) {
        
            self.shake()
        
    }
    
    func shake()
    {
        let shake = POPSpringAnimation(propertyNamed: kPOPLayerPositionX)
        shake.springBounciness = 20
        shake.velocity = NSNumber(int: 3000)
        self.passwordTextField.layer.pop_addAnimation(shake, forKey: "shakePassword")
    }

}
