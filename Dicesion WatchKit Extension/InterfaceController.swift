//
//  InterfaceController.swift
//  Dicision WatchKit Extension
//
//  Created by Jordana Mecler on 05/05/15.
//  Copyright (c) 2015 CoolBitches. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var rangeLabel: WKInterfaceLabel!
    @IBOutlet weak var randomLabel: WKInterfaceLabel!
    var maxNumber :UInt32 = 6
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func pressButton() {
        
        var random:UInt32 = 0
        random = arc4random() % self.maxNumber + 1
        
        randomLabel.setText("\(random)")
        
    }
    @IBAction func decreaseNumbers() {
        if maxNumber <= 2
        {
            maxNumber = 2
        }
        else
        {
            maxNumber--
            rangeLabel.setText("Range: \(maxNumber)")
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
            rangeLabel.setText("Range: \(maxNumber)")
        }
        println(maxNumber)
    }
    
    
}
