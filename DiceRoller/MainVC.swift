//
//  MainVC.swift
//  DiceRoller
//
//  Created by Litman, Mike on 7/11/16.
//  Copyright © 2016 Name. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var MyLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    //D4 button event
    @IBAction func D4ButtonPressed(sender: AnyObject)
    {
        MyLabel.text = "D4"
    }
    //D6 button event
    @IBAction func D6ButtonPressed(sender: AnyObject)
    {
        MyLabel.text = "D6"
    }
    //D8 button event
    @IBAction func D8BUttonPressed(sender: AnyObject)
    {
        MyLabel.text = "D8"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
