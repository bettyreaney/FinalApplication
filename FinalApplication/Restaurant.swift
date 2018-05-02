//
//  Restaurant.swift
//  FinalApplication
//
//  Created by Betty Reaney on 5/1/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

class Restaurant {

    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int

    //MARK: Initilization

    init?(name: String, photo: UIImage?, rating: Int){
        
    // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
    // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else{
            return nil
        }
        
        
//    // Initialization should fail if there is no name or if the rating is negative.
//        if name.isEmpty || rating < 0 {
//            return nil
//        }
        
    // Initialize stored properties.
    self.name = name
    self.photo = photo
    self.rating = rating

    }
}
