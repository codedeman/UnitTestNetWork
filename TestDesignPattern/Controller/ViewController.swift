//
//  ViewController.swift
//  TestDesignPattern
//
//  Created by Apple on 10/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var userTableView: UITableView!
    var viewModel:UserViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.register(UINib(nibName: "DasboardCell", bundle: nil), forCellReuseIdentifier: "DasboardCell")
        
    
    }
    func blindUI()
    {
    
        self.viewModel.userObservable.asObservable().bind(to: self.userTableView.rx.items(cellIdentifier: "DasboardCell",cellType: DasboardCell.self)){ (index,user,cell) in
            
            
//            DispatchQueue.main.async {
//
//
//
////                cell.usernameLabel.text = user
//
//            }
        
        
        
        }
            
    
    }
}
//extension ViewController:UITableViewDelegate,UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return userModel.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DasboardCell") as? DasboardCell else   {
//
//            return DasboardCell()
//        }
//        let user = userModel[indexPath.row]
//        cell.configureCell(user: user)
//
//
//        return cell
//
//    }
//
//
//
//
//}
    





