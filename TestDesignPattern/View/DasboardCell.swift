//
//  DasboardCell.swift
//  TestDesignPattern
//
//  Created by Apple on 11/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DasboardCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(user:User)  {
        DispatchQueue.main.async {
            
            guard let url = URL(string: user.avatar_url) else { return }
            guard let data = try? Data(contentsOf: url) else {return}
            self.avatarImageView.image = UIImage(data: data)
            self.usernameLabel.text = user.login
            
        }
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
