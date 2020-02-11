//
//  PetView.swift
//  TestDesignPattern
//
//  Created by Apple on 10/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//
import UIKit

 

public class PetView: UIView{
    
    public let imageView: UIImageView
    public let nameLabel: UILabel
    public let ageLabel: UILabel
    public let adoptionFeeLabel: UILabel
    
    public override init(frame: CGRect) {
      
      var childFrame = CGRect(x: 0, y: 16,
                              width: frame.width,
                              height: frame.height / 2)
      imageView = UIImageView(frame: childFrame)
      imageView.contentMode = .scaleAspectFit

      childFrame.origin.y += childFrame.height + 16
      childFrame.size.height = 30
      nameLabel = UILabel(frame: childFrame)
      nameLabel.textAlignment = .center

      childFrame.origin.y += childFrame.height
      ageLabel = UILabel(frame: childFrame)
      ageLabel.textAlignment = .center

      childFrame.origin.y += childFrame.height
      adoptionFeeLabel = UILabel(frame: childFrame)
      adoptionFeeLabel.textAlignment = .center

      super.init(frame: frame)

      backgroundColor = .white
      addSubview(imageView)
      addSubview(nameLabel)
      addSubview(ageLabel)
      addSubview(adoptionFeeLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}