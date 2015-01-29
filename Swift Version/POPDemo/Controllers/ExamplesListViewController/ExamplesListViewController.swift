//
//  ExamplesViewController.swift
//  POPSwiftDemo
//
//  Created by Hossam Ghareeb on 1/29/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class ExamplesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var examplesTableView: UITableView!
    
    let examples = ["Facebook Like & Send", "Wrong Password", "Custom VC Transition"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch(indexPath.row)
        {
            case 0:
                self.performSegueWithIdentifier("openFB", sender: self)
            
            case 1:
                self.performSegueWithIdentifier("openWrongPass", sender: self)
            default:
                self.performSegueWithIdentifier("openCustomTransition", sender: self)
        
            
            
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.examples.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("exampleCell") as ExampleCell
        cell.textLabel.text = self.examples[indexPath.row]
        return cell
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
