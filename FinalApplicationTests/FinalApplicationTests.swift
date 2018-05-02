//
//  FinalApplicationTests.swift
//  FinalApplicationTests
//
//  Created by Betty Reaney on 4/17/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import XCTest

@testable import FinalApplication

class FinalApplicationTests: XCTestCase {
    
    //Mark: Restaurant CLass Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testRestaurantInitializationSucceeds() {
        
        // Zero Rating
        let zeroRatingRestaurant = Restaurant.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingRestaurant)
        
        // Highest Positive Rating
        let positiveRatingRestaurant = Restaurant.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingRestaurant)
        
        
        // Confirm that the Meal initialier returns nil when passed a negative rating  or an empty name.
        func testRestaurantInitializationFails(){
            
        // Negative Rating
        let negativeRatingRestaurant = Restaurant.init(name: "Negative", photo: nil, rating: -1)
            XCTAssertNil(negativeRatingRestaurant)
            
        //Rating exceeds maximum
            let largeRatingRestuarant = Restaurant.init(name: "Large", photo: nil, rating: 6)
            XCTAssertNil(largeRatingRestuarant)
            
        //Empty String
        let emptyStringRestaurant = Restaurant.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringRestaurant)
        
        }
    
    }
    
}
