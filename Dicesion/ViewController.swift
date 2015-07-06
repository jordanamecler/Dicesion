//
//  ViewController.swift
//  Dicision
//
//  Created by Jordana Mecler on 05/05/15.
//  Copyright (c) 2015 CoolBitches. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var rangeNumber: UILabel!
    @IBOutlet weak var oneDice: UIButton!
    @IBOutlet weak var twoDices: UIButton!
    @IBOutlet weak var threeDices: UIButton!
    @IBOutlet weak var pressHere: UIButton!
    var image1 = UIImageView()
    var image2 = UIImageView()
    var image3 = UIImageView()
    var chosenNumber1 = UILabel()
    var chosenNumber2 = UILabel()
    var chosenNumber3 = UILabel()
    var maxNumber :UInt32 = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nome = UIImage(named: "Titulo")
        var title = UIImageView(image: nome)
        self.navigationItem.titleView = title
        
        pressHere.layer.cornerRadius = 15
        
        oneDice.layer.cornerRadius = 15
        twoDices.layer.cornerRadius = 15
        threeDices.layer.cornerRadius = 15
        
        oneDice.layer.borderColor = UIColor.blackColor().CGColor
        twoDices.layer.borderColor = UIColor.blackColor().CGColor
        threeDices.layer.borderColor = UIColor.blackColor().CGColor
        
        oneDice.selected = true
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
            image1.frame = CGRectMake(self.view.frame.size.width/5.333, self.view.frame.size.height/5.7, self.view.frame.size.width/1.92, self.view.frame.size.height/2.56)
            image1.center.x = self.view.center.x
            image1.center.y = self.view.frame.size.height/3.1
            chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 130)
            chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 80)
            chosenNumber3.font = UIFont(name: "HelveticaNeue", size: 60)
        }
        else
        {
            image1.frame = CGRectMake(self.view.frame.size.width/5.333, self.view.frame.size.height/5.7, self.view.frame.size.width/1.6, self.view.frame.size.height/2.84)
            chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 90)
            chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 40)
            chosenNumber3.font = UIFont(name: "HelveticaNeue", size: 20)
        }
        image1.image = UIImage(named: "bigDice")
        self.view.addSubview(image1)
        
        image2.image = UIImage(named: "bigDice")
        self.view.addSubview(image2)
        image2.hidden = true
        
        image3.image = UIImage(named: "bigDice")
        self.view.addSubview(image3)
        image3.hidden = true
        
        chosenNumber1.frame = CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height/2)
        chosenNumber1.text = "1"
        chosenNumber1.textAlignment = NSTextAlignment.Center
        chosenNumber1.textColor = UIColor.whiteColor()
        chosenNumber1.center = image1.center
        self.view.addSubview(chosenNumber1)
        
        chosenNumber2.frame = CGRectMake(0,0,self.view.frame.size.width/2, self.view.frame.size.width/2)
        chosenNumber2.text = "1"
        chosenNumber2.textAlignment = NSTextAlignment.Center
        chosenNumber2.textColor = UIColor.whiteColor()
        chosenNumber2.center = image2.center
        self.view.addSubview(chosenNumber2)
        chosenNumber2.hidden = true
        
        chosenNumber3.frame = CGRectMake(0,0,self.view.frame.size.width/2, self.view.frame.size.width/2)
        chosenNumber3.text = "1"
        chosenNumber3.textAlignment = NSTextAlignment.Center
        chosenNumber3.textColor = UIColor.whiteColor()
        chosenNumber3.center = image3.center
        self.view.addSubview(chosenNumber3)
        chosenNumber3.hidden = true
    }
    
    @IBAction func diceButton(sender: UIButton) {
        
        switch sender
        {
            
        case oneDice:
            
            if twoDices.selected || threeDices.selected
            {
                image2.hidden = true
                image3.hidden = true
                twoDices.selected = false
                threeDices.selected = false
                
                chosenNumber2.hidden = true
                chosenNumber3.hidden = true
                
                if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
                    image1.frame = CGRectMake(self.view.frame.size.width/5.333, self.view.frame.size.height/5.7, self.view.frame.size.width/1.92, self.view.frame.size.height/2.56)
                    image1.center.x = self.view.center.x
                    image1.center.y = self.view.frame.size.height/3.1
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 130)
                }
                else {
                    image1.frame = CGRectMake(self.view.frame.size.width/5.333, self.view.frame.size.height/5.7, self.view.frame.size.width/1.6, self.view.frame.size.height/2.84)
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 90)
                }
                
                chosenNumber1.center = image1.center
                chosenNumber1.text = "1"
                
            }
            oneDice.selected = true
            
        case twoDices:
            
            if oneDice.selected || threeDices.selected
            {
                image2.hidden = false
                image3.hidden = true
                oneDice.selected = false
                threeDices.selected = false
                
                chosenNumber2.hidden = false
                chosenNumber3.hidden = true
                
                if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 80)
                    chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 80)
                    image1.frame = CGRectMake(self.view.frame.size.width/5.5, self.view.frame.size.height/5.7, self.view.frame.size.width/3.84, self.view.frame.size.height/5.12)
                    image2.frame = CGRectMake(self.view.frame.size.width/1.75, self.view.frame.size.height/5.7, self.view.frame.size.width/3.84, self.view.frame.size.height/5.12)
                }
                else {
                    
                    image1.frame = CGRectMake(self.view.frame.size.width/6.8, self.view.frame.size.height/5.7, self.view.frame.size.width/3.2, self.view.frame.size.height/5.68)
                    
                    image2.frame = CGRectMake(self.view.frame.size.width/1.8, self.view.frame.size.height/5.7, self.view.frame.size.width/3.2, self.view.frame.size.height/5.68)
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 40)
                    chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 40)
                }
                
                chosenNumber1.center = image1.center
                chosenNumber1.text = "1"
                
                
                chosenNumber2.center = image2.center
                chosenNumber2.text = "1"
                
            }
            twoDices.selected = true
            
        case threeDices:
            
            if oneDice.selected || twoDices.selected
            {
                image3.hidden = false
                image2.hidden = false
                oneDice.selected = false
                twoDices.selected = false
                
                chosenNumber2.hidden = false
                chosenNumber3.hidden = false
                
                if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
                    image1.frame = CGRectMake(self.view.frame.size.width/7.5, self.view.frame.size.height/4, self.view.frame.size.width/6.4, self.view.frame.size.height/8.533)
                    
                    image2.frame = CGRectMake(self.view.frame.size.width/2.6, self.view.frame.size.height/4, self.view.frame.size.width/6.4, self.view.frame.size.height/8.533)
                    image2.center.x = self.view.center.x
                    
                    image3.frame = CGRectMake(self.view.frame.size.width/1.4, self.view.frame.size.height/4, self.view.frame.size.width/6.4, self.view.frame.size.height/8.533)
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 40)
                    chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 40)
                    chosenNumber3.font = UIFont(name: "HelveticaNeue", size: 40)
                }
                else
                {
                    image1.frame = CGRectMake(self.view.frame.size.width/15, self.view.frame.size.height/4, self.view.frame.size.width/4.8, self.view.frame.size.height/8.52)
                    
                    image2.frame = CGRectMake(self.view.frame.size.width/2.6, self.view.frame.size.height/4, self.view.frame.size.width/4.8, self.view.frame.size.height/8.52)
                    
                    image3.frame = CGRectMake(self.view.frame.size.width/1.4, self.view.frame.size.height/4, self.view.frame.size.width/4.8, self.view.frame.size.height/8.52)
                    chosenNumber1.font = UIFont(name: "HelveticaNeue", size: 20)
                    chosenNumber2.font = UIFont(name: "HelveticaNeue", size: 20)
                    chosenNumber3.font = UIFont(name: "HelveticaNeue", size: 20)
                }
                
                chosenNumber1.center = image1.center
                chosenNumber1.text = "1"
                chosenNumber2.center = image2.center
                chosenNumber2.text = "1"
                chosenNumber3.center = image3.center
                chosenNumber3.text = "1"
            }
            threeDices.selected = true
            
        default:
            
            println("default")
        }
        
    }
    
    @IBAction func pressedButton(sender: UIButton) {
        
        var random:UInt32 = 0
        var value = self.rangeNumber.text?.toInt()
        var value32:UInt32 = (UInt32)(value!)
        
        random = arc4random() % value32
        random++
        chosenNumber1.text = "\(random)"
        
        random = arc4random() % value32
        random++
        chosenNumber2.text = "\(random)"
        
        random = arc4random() % value32
        random++
        chosenNumber3.text = "\(random)"
    }
    @IBAction func rangeChanged(sender: UIStepper) {
        rangeNumber.text = Int(sender.value).description
        
    }
    
    @IBAction func decreaseNumbers() {
        if maxNumber <= 2
        {
            maxNumber = 2
        }
        else
        {
            maxNumber--
            self.rangeNumber.text = "\(maxNumber)"
        }
        println(maxNumber)
    }
    
    @IBAction func increaseNumbers() {
        if maxNumber >= 100
        {
            maxNumber = 100
        }
        else
        {
            maxNumber++
            self.rangeNumber.text = "\(maxNumber)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}