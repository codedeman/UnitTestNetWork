//
//  Pet.swift
//  TestDesignPattern
//
//  Created by Apple on 10/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

// MARK: - Model
public class Pet {
  public enum Rarity {
    case common
    case uncommon
    case rare
    case veryRare
  }
  
  public let name: String
  public let birthday: Date
  public let rarity: Rarity
  public let image: UIImage
  
  public init(name: String,
              birthday: Date,
              rarity: Rarity,
              image: UIImage) {
    self.name = name
    self.birthday = birthday
    self.rarity = rarity
    self.image = image
  }
}
