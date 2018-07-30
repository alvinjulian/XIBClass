//
//  SecondCell.swift
//  xibClass
//
//  Created by Alvin Julian on 30/07/18.
//  Copyright © 2018 Alvin Julian. All rights reserved.
//

import UIKit

protocol secondCellDelegate: class {
    func increaseQuantityPressed()
    func decreaseQuantityPressed()
}


class SecondCell: UITableViewCell {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDesc: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var btnIncrease: UIButton!
    @IBOutlet weak var btnDecrease: UIButton!
    @IBOutlet weak var productQuantity: UILabel!
    
    weak var delegate: secondCellDelegate?
    
    var qty = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func increaseQuantityPressed(_ sender: Any) {
        delegate?.increaseQuantityPressed()
        qty += 1
        productQuantity.text = String(qty)
        
        if let name = productName.text {
            if let price = priceList[name] {
                productPrice.text = "$ \(price*qty).00"
            }
        }
    }
    
    @IBAction func decreaseQuantityPressed(_ sender: Any) {
        delegate?.decreaseQuantityPressed()
        if qty <= 0 {
            qty = 0
            if let name = productName.text {
                if let price = priceList[name] {
                    productPrice.text = "$ \(price*qty).00"
                }
            }
        } else {
            qty -= 1
            productQuantity.text = String(qty)
            if let name = productName.text {
                if let price = priceList[name] {
                    productPrice.text = "$ \(price*qty).00"
                }
            }
        }
    }
}
