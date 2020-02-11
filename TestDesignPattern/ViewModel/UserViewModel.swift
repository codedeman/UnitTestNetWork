 //
//  UserViewModel.swift
//  TestDesignPattern
//
//  Created by Apple on 11/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
 class UserViewModel:NSObject  {
    
    
    private var userProfile  = BehaviorRelay<[UserRequest]>(value: [])
    private var result = [UserRequest]()
    
    var userObservable: Observable<[UserRequest]> {
        return  userProfile.asObservable()
    }
    
    override init() {
        super.init()
        
        Dataservice.intance.fetchData(keyword: "K") { (user) in
            
            self.result.append(user!)
            self.userProfile.accept(self.result)
            
        }
    }
    
    
    

//    var searchInput =  Variable<String?>("")
//    var searchResult = Variable<[UserModel]>([])
//    var search:PublishSubject<[UserModel]> =  PublishSubject()
    
//    public let albums : PublishSubject<[Album]> = PublishSubject()

    
//    override init() {
//        super.init()
////        blindingData()
//        let request = "https://api.github.com/search/users?q=dung"
//
//        requestJson(url: request)
//    }
    
    
    
//    func blindingData(){
//
//        self.searchInput.asObservable().subscribe(onNext: { (text) in
//
//            if text!.isEmpty{
//
//                self.searchResult.value = []
//
//            }else{
//
//                let request = "https://api.github.com/search/users?q=\(text!)"
//
//                self.requestJson(url: "https://api.github.com/search/users?q=\(String(describing: text!))")
//            }
//
//            }, onError: nil, onCompleted: nil, onDisposed: nil).addDisposableTo(disposeBag)
//
//
//    }
    
//    func requestJson(url:String){
//
//        guard let urlString = URL(string: url) else { return }
//        let session = URLSession.shared.dataTask(with: urlString){(data,respone,err) in
//            if err == nil{
//
//                do{
//
//                    if  let result =  try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? Dictionary<String,Any>{
//                        var userArray:Array<UserModel> = []
//                        if let items:Array<Any> = result["items"] as? Array<Any>{
//
//                            for i in items{
//
//
////                                print("what the hell \(i["login"])")
//                                let user = UserModel(object: i)
//                                userArray.append(user)
//                            }
//                            self.searchResult.value = userArray
//
//                        }
//
//                    }
//
//
//                }catch{
//
//                }
//            }
//
//
//        }.resume()
//
//    }
//
//
//
//
//
    
    
    
 }
