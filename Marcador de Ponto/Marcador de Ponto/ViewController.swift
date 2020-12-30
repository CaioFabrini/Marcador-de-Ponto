//
//  ViewController.swift
//  Marcador de Ponto
//
//  Created by Caio on 30/12/20.
//

import UIKit

class LoginVC: BaseViewController{
  
    let screen = LoginScreen()
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen.loginTextField.delegate = self
    }
        
}

extension LoginVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.view = screen
        return true
    }
}

