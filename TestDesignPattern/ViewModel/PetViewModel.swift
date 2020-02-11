//
//  PetViewModel.swift
//  TestDesignPattern
//
//  Created by Apple on 10/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
public class PetViewModel{
    
    private let pet: Pet!
    private let calendar: Calendar!
    
    public init(pet:Pet){

        self.pet = pet
        self.calendar = Calendar(identifier: .gregorian)
        
        
    }
    // 2
    public var name: String {
      return pet.name
    }
    
    public var image: UIImage {
      return pet.image
    }
    
    // 3
     public var ageText: String {
       let today = calendar.startOfDay(for: Date())
       let birthday = calendar.startOfDay(for: pet.birthday)
       let components = calendar.dateComponents([.year],
                                                from: birthday,
                                                to: today)
       let age = components.year!
       return "\(age) years old"
     }
    
    // 4
    public var adoptionFeeText: String {
      switch pet.rarity {
      case .common:
        return "$50.00"
      case .uncommon:
        return "$75.00"
      case .rare:
        return "$150.00"
      case .veryRare:
        return "$500.00"
      }
    }
    
    
    
    
}

extension PetViewModel{
    
    public func congigure(_ view:PetView){
        
        view.nameLabel.text = name
        view.imageView.image = image
        view.ageLabel.text = ageText
        view.adoptionFeeLabel.text = adoptionFeeText
    }
}
