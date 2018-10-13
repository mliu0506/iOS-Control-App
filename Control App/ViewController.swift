//
//  ViewController.swift
//  Control App
//
//  Created by Michael Liu on 2018-10-13.
//  Copyright © 2018 CS2680. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!

    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var silderLabel: UILabel!
    
    
    @IBOutlet weak var leftLabel: UILabel!
    

    @IBOutlet weak var rightLabel: UILabel!
    
    
    @IBOutlet weak var leftSwitch: UISwitch!
    
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField)
    {
        sender.resignFirstResponder()
    }


    @objc func viewTapped()
    {
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }


    @IBAction func silderChange(_ sender: UISlider) {
        
        let progress = Int(round(sender.value))
        self.silderLabel.text = "\(progress)"

    }
    
    @IBAction func toggleControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            self.leftSwitch.isHidden = false
            self.rightSwitch.isHidden = false
            self.myButton.isHidden = true
        }
        else
        {
            self.leftSwitch.isHidden = true
            self.rightSwitch.isHidden = true
            self.myButton.isHidden = false
        }

        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        let isOn = sender.isOn
        
        self.leftSwitch.setOn(isOn, animated: true)
        self.rightSwitch.setOn(isOn, animated: true)
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
    }
    
}

