//
//  RatingControl.swift
//  FinalApplication
//
//  Created by Betty Reaney on 4/26/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: Properties
    
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
    didSet{
        setupButtons()
    }
}
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        
        }
        
    }
    

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    

    //MARK: Private Methods
    private func setupButtons() {
        
        //Clear any existing buttons
        for button in ratingButtons{
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        ratingButtons.removeAll()
        
        // Load Button Images
        let bundle = Bundle(for: type(of: self))
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named:"emptyStar", in: bundle, compatibleWith: self.traitCollection)
        let highlightedStar = UIImage(named:"highlightedStar", in: bundle,compatibleWith: self.traitCollection)
        
        
        for _ in 0..<starCount{
        //Create the button
        let button = UIButton()
        //Set the button images
            button.setImage(emptyStar, for: .normal)
            button.setImage(emptyStar, for: .selected)
            button.setImage(emptyStar, for: .highlighted)
            button.setImage(emptyStar, for: [.highlighted, .selected])
        
        //Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
        button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
        
        // Setup the button action
        button.addTarget(self, action:
            #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        //Add the button to the stack
        addArrangedSubview(button)
            
        //Add the new button to the rating button array
        ratingButtons.append(button)
            
        }
    }
}
