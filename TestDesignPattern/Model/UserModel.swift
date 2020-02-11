////
////  UserModel.swift
////  TestDesignPattern
////
////  Created by Apple on 11/18/19.
////  Copyright © 2019 Apple. All rights reserved.
////
//
//import Foundation
//
//struct UserModel {
//    
//    var userName:String!
//    var id:Int!
//    var image:String!
//    init() {
//        
//        self.userName = ""
//        self.id = 1
//    }
//    init(object:Any) {
//        
//        if let dic:Dictionary<String,Any> = object as? Dictionary<String,Any>{
//            
//            if let userName = dic["login"] as? String{
//                self.userName = userName
//            }else{
//                
//                self.userName = ""
//            }
//            
//            if let id = dic["id"] as? Int{
//                self.id = id
//            }
//            else{
//                
//                self.id = 0
//            }
//            
//            if let image = dic["avatar_url"] as? String{
//                self.image = image
//            }
//            else{
//                
//                self.image = "jocker-1.jpg"
//            }
//            
//        }else{
//            
//            self.userName = ""
//            
//        }
//        
//    }
//}
