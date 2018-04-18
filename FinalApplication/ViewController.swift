//
//  ViewController.swift
//  FinalApplication
//
//  Created by Betty Reaney on 4/17/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        restaurantNameLabel.text = "Default Text"
    }
    

}

