//
//  ViewController.swift
//  FinalApplication
//
//  Created by Betty Reaney on 4/17/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var restaurantNameLabel: UILabel!

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        
        nameTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        restaurantNameLabel.text = textField.text
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        restaurantNameLabel.text = "Default Text"
    }
    

}

