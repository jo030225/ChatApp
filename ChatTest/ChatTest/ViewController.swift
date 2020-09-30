//
//  ViewController.swift
//  ChatTest
//
//  Created by 조주혁 on 2020/09/27.
//

import UIKit
import SocketIO

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func disconnetBtn(_ sender: Any) {
        SocketIOManager.shared.closeConnection()
    }
    
    @IBAction func connetBtn(_ sender: Any) {
        SocketIOManager.shared.establishConnection()
    }
    
    @IBAction func sendData(_ sender: Any) {
        SocketIOManager.shared.sendMessage(message: self.textField.text!, nickname: "ns")
    }
}

