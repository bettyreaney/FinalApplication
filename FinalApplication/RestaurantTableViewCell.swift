//
//  RestaurantTableViewCell.swift
//  FinalApplication
//
//  Created by Betty Reaney on 5/1/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
