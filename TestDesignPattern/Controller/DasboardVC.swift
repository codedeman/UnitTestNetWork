//
//  DasboardVC.swift
//  TestDesignPattern
//
//  Created by Apple on 11/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift


class DasboardVC: UIViewController {
    
    
    @IBOutlet weak var inputSearch: UITextField!
    
    @IBOutlet weak var userTableView: UITableView!
//    var userViewModel = UserViewModel()
    let disposeBag = DisposeBag()
    
    let cell = "DasboardCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        userTableView.register(UINib(nibName: "DasboardCell", bundle: nil), forCellReuseIdentifier: "DasboardCell")
//        blindUi()
        
    }
    
    func blindUi()  {
        
        
     
        
//        self.userViewModel.searchResult.asObservable().bind(to: userViewModel.searchResult).disposed(by: disposeBag)
        
//        let obj =  Observable<[userViewModel]> =  Observable.just(userViewModel)
        
        
        
//        self.inputSearch.rx.text.asObservable().bind(to: userViewModel.searchInput).addDisposableTo(disposeBag)

//        self.userViewModel.searchResult.asObservable().bind(to: self.userTableView.rx.items(cellIdentifier: "DasboardCell",cellType: DasboardCell.self)){
//
//            (index,user,cell) in
//
//            cell.usernameLabel.text = user.userName
//
//            cell.idLabel.text = String(user.id)
////
//            
//        }.disposed(by: disposeBag)
        
    }
    
    
    
    
    
    
    
}

