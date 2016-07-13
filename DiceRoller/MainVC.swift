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
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var rollText: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClearButton(sender: AnyObject)
    {
        self.rollText.text = ""
        Core.currentRoll = ""
        
    }
    
    @IBAction func screen3buttonpressed()
    {
    let vc = self.storyboard?.instantiateViewControllerWithIdentifier("Screen3") as! Screen3VC
        
        vc.text2set = self.rollText.text!
        
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func DeleteButtonPressed(sender: AnyObject)
    {
        let parts = self.rollText.text!.componentsSeparatedByString("+")
        self.rollText.text = ""
        for i in 0 ..< parts.count-1
        {
            if(self.rollText.text! == "")
        
            {
                self.rollText.text = parts[1]
            }
            else
            {
                self.rollText.text = "\(self.rollText.text!)+\(parts[i])"
            }
        }
        //our label has been rebuilt
        Core.currentRoll = self.rollText.text!
    }
    
    @IBAction func RollButtonPressed(sender: AnyObject)
    {
        
        let parts = self.rollText.text!.componentsSeparatedByString("+")
        var sum = 0
        for part in parts
        {
            if(part != "")
            {
            
            let roll = part.componentsSeparatedByString("D")
            let sides = Int(roll[1])!
                let rollResult = self.rolldice(sides)
                print(rollResult)
                sum += rollResult
            }
        }
        self.resultLabel.text = "\(sum)"
    }
    
    
    func rolldice(sides : Int) -> Int
    {
        return random() % sides + 1
        
    }

    
    
    
    @IBAction func DiceButtonPressed(sender: UIButton)
    {
        var sides = -1
        if(sender == self.D4Button)
        {
            sides = 4
        }
        else if(sender == self.D6Button)
        {
            sides = 6
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
        
        
       if(self.rollText.text! == "")
        {
            self.rollText.text! = "D\(sides)"
        }
        else
        {
        self.rollText.text = "\(self.rollText.text!)+D\(sides)"
        }
        //rolltext has been updated
        Core.currentRoll = self.rollText.text!
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
            vc.text2set = self.rollText.text!
            
            
        }
            
            }
        }
    
        
    
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

