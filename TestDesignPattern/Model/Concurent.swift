//
//  Concurent.swift
//  TestDesignPattern
//
//  Created by Apple on 11/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation


struct CurrencyRate {

    let currencyIso : String
    let rate : Double
}

struct Converter {

    let base : String
    let date : String

    let rates : [CurrencyRate]
}
