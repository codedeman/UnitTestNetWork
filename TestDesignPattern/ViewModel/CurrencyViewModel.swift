//
//  CurrencyViewModel.swift
//  TestDesignPattern
//
//  Created by Apple on 11/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
struct CurrencyViewModel {

    weak var dataSource : GenericDataSource<CurrencyRate>?
    
//    var onErrorHandling : ((ErrorResult?) -> Void)?

    init(dataSource : GenericDataSource<CurrencyRate>?) {
        self.dataSource = dataSource
    }
    
    func fetchCurrencies() {

        
        
    }
    
    
}
