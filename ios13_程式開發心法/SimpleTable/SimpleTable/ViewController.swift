//
//  ViewController.swift
//  SimpleTable
//
//  Created by 王肇邦 on 2021/7/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["王肇邦", "陳玟霖", "王筱喬", "王宥棋", "陳映汝", "陳亭蓁", "陳柏穎", "楊媽媽", "老謝", "老劉", "雙胞胎大女兒", "雙胞胎小女兒", "豬小弟"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

