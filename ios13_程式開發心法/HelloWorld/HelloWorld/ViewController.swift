//
//  ViewController.swift
//  HelloWorld
//
//  Created by 王肇邦 on 2021/7/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // view.backgroundColor = UIColor.black
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        // sender is the Button that be pressed.
        // 將sender儲存至selectedButton
        let selectedButton = sender
        
        // 從按鈕的標題標籤取得表情符號
        if let wordToLookup = selectedButton.titleLabel?.text {
            let alertController = UIAlertController(title: "這是我的第一個App", message: wordToLookup, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
}

