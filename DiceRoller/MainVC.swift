//
//  MainVC.swift
//  DiceRoller
//
//  Created by Litman, Mike on 7/11/16.
//  Copyright © 2016 Name. All rights reserved.
//

import UIKit

class MainVC: UIViewController
    {

    
    @IBOutlet weak var D4Button: UIButton!
    
    @IBOutlet weak var D6Button: UIButton!
    
    @IBOutlet weak var D8Button: UIButton!
    
    @IBOutlet weak var D10Button: UIButton!
    
    @IBOutlet weak var D12Button: UIButton!
    
    @IBOutlet weak var D20BUtton: UIButton!
    
    
    @IBOutlet weak var MyLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func screen3buttonpressed()
    {
    let vc = self.storyboard?.instantiateViewControllerWithIdentifier("Screen3") as! Screen3VC
        
        vc.text2set = self.MyLabel.text!
        
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
    
    @IBAction func DiceButtonPressed(sender: UIButton)
    {
        var sides = -1
        if(sender == self.D4Button)
        {
            sides = 4
        }
        else if(sender == self.D8Button)
        {
            sides = 8
        }
        else if(sender == self.D10Button)
        {
            sides = 10
        }
        else if(sender == self.D12Button)
        {
            sides = 12
        }
        else if(sender == self.D20BUtton)
        {
            sides = 20
        }
        
        self.MyLabel.text = "\(sides)"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if(segue.identifier != nil)
        {
         if(segue.identifier! == "Screen2")
         {
            
            let vc = segue.destinationViewController as! Screen2VC
            vc.text2set = self.MyLabel.text!
            
            
        }
            
            }
        }
    
        
    
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    


