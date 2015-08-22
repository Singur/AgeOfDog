//
//  ViewController.swift
//  AgeOfDog
//
//  Created by Александра Сингур on 21.08.15.
//  Copyright (c) 2015 Alex Singur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterHumanTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Human Years"
        
        enterHumanTextField.resignFirstResponder()
    }

}

