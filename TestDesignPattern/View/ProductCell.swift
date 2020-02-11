//
//  ProductCell.swift
//  TestDesignPattern
//
//  Created by Apple on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    

    @IBOutlet weak var imageUrl: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productQuality: UILabel!
    
    var curencyRate:CurrencyRate?{
        
        didSet{
            
            guard let currencyRate = curencyRate else {
                return
            }
            productName.text = "\(curencyRate?.rate)"
            productQuality.text = currencyRate.currencyIso
            
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
