//
//  ThirdCell.swift
//  xibClass
//
//  Created by Alvin Julian on 30/07/18.
//  Copyright © 2018 Alvin Julian. All rights reserved.
//

import UIKit

class ThirdCell: UITableViewCell {

    
    @IBOutlet weak var firstColorIndicator: UIView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var firstProductName: UILabel!
    @IBOutlet weak var firstProductDescription: UILabel!
    
    @IBOutlet weak var secondColorIndicator: UIView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var secondProductName: UILabel!
    @IBOutlet weak var secondProductDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
