//
//  ViewController.swift
//  calcNew
//
//  Created by yousef_lab1 on 10/20/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var num1:Double=0
    var num2:Double=0
    var operation:Double=0
    var performing=false
    
    @IBOutlet weak var TxtCalc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func numberop( _ sender : UIButton){
        if performing == true {
            
            TxtCalc.text = sender.titleLabel?.text
            
            num2 = Double(TxtCalc.text!)!
            
            performing = false
            
        }
            
        else {
            
            TxtCalc.text = TxtCalc.text! + (sender.titleLabel?.text)!
            
            num2 = Double(TxtCalc.text!)!
            
            
        }
    }

    @IBAction func clear(_ sender: Any) {
        TxtCalc.text=""
        num1=0
        num2=0
        operation=0
        performing=true
    }
    
    @IBAction func buttons( _ sender : UIButton){
        if TxtCalc.text != "" && sender.tag != 1{
            num1 = Double(TxtCalc.text!)!
            
            operation = Double(sender.tag)
            performing=true
        }
        else if sender.tag==1{
            
            if operation==2{
                TxtCalc.text=String(num1+num2)
            }
            else if operation==3{
                TxtCalc.text=String(num1-num2)
            }
            else if operation==4{
                TxtCalc.text=String(num1*num2)
            }
            else if operation==5{
                TxtCalc.text=String(num1/num2)
            }
            
        }
    }
    
    
}

