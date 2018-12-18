//
//  ViewController.swift
//  alertcontrol
//
//  Created by student on 2018/11/22.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "please choose color", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RED", style: .default, handler: {(action)in
            self.view.backgroundColor = UIColor.red
        }))
        alert.addAction(UIAlertAction(title: "GREEN", style: .default, handler: {(action)in
            self.view.backgroundColor = UIColor.green
        }))
        alert.addAction(UIAlertAction(title: "BLUE", style: .destructive, handler: {(action)in
            self.view.backgroundColor = UIColor.blue
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: {(action)in
            self.view.backgroundColor = UIColor.white
        }))
        present(alert,animated: true,completion: nil)
    }
    @IBAction func actionsheet(_ sender: Any) {
        let alert = UIAlertController(title: "logining", message: "please input", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "login", style: .default, handler: {(action)in
//            self.view.backgroundColor = UIColor.red
            guard let username = alert.textFields?.first?.text,let password = alert.textFields?.last?.text else{
                return
            }
            print("username=\(username) password\(password)")
        }))
        alert.addAction(UIAlertAction(title: "cancel", style: .default, handler: {(action)in
//            self.view.backgroundColor = UIColor.green
        }))
        
        alert.addTextField{
            (textField) in
            textField.placeholder = "your name:"
        }
        alert.addTextField{
            (textField) in
            textField.placeholder = "your password:"
            textField.isSecureTextEntry = true
        }
         present(alert,animated: true,completion: nil)
    }
}

