//
//  Service.swift
//  TestDesignPattern
//
//  Created by Apple on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import Alamofire
class Dataservice {
    static let intance = Dataservice()
    
    func fetchData(keyword:String, completion:@escaping(_ user:UserRequest?)->())  {
        AF.request("https://api.github.com/search/users?q=\(keyword)").responseJSON { (response) in
            
            if let error = response.error{
                debugPrint(error.localizedDescription)
                completion(nil)
            }
            
            guard let data = response.data else {return completion(nil)}
            let jsonDecoder = JSONDecoder()
            
            do {
                let person = try jsonDecoder.decode(UserRequest.self, from: data)
                completion(person)
            } catch {
                debugPrint(error.localizedDescription)
                completion(nil)
            }
        }
        
    }
    
    
}
