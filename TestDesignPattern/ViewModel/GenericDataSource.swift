//
//  GenericDataSource.swift
//  TestDesignPattern
//
//  Created by Apple on 11/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

class GenericDataSource<T> : NSObject {
    var data: DynamicValue<[T]> = DynamicValue([])
}
class CurrencyDataSource : GenericDataSource<CurrencyRate>, UITableViewDataSource {
    let PRODUCT_CELL_IDENTIFIER = "ProductCell"

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PRODUCT_CELL_IDENTIFIER, for: indexPath) as! ProductCell
        
        let currencyRate = self.data.value[indexPath.row]
//        cell.currencyRate = currencyRate
        cell.curencyRate = currencyRate
        
        return cell
    }
}
