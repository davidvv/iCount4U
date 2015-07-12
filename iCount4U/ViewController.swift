//
//  ViewController.swift
//  iCount4U
//
//  Created by David Vences Vaquero on 11/7/15.
//  Copyright © 2015 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
    
    var value:Int = 1
    var upperValue:Int = 0
    var lowerValue:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        upperLabel.text = "\(upperValue)"
        lowerLabel.text = "\(lowerValue)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func upperButtonTapped() {
        let counter = count(upperValue,label: upperLabel)
        print("\(counter)")
        print("button1")
        
    }

    @IBAction func lowerButtonTapped() {
        let counter = count(lowerValue,label: lowerLabel)
        print("\(counter)")
        print("Button2")

    }
    @IBAction func resetButtonTapped() {
        let resetValue = 0
        upperLabel.text = "\(resetValue)"
        lowerLabel.text = upperLabel.text
    }
    
    func count( value:Int, label:UILabel) -> (Int, String){
        let labelToInt:String = label.text!
        let value:Int = Int(labelToInt)! + 1
        label.text = "\(value)"
        print("\(value)")
        return (value, label.text!)
    }

}

