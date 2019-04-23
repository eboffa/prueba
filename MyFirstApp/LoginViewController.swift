//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 15/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 8
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
//        if identifier == "goToHome" {
//            if userTextField.text! == "test" && passwordtextField.text! == "test" {   este ejemplo esta mal porque hacemos un force unwrapp con el !
//                return true
//            }
//            return false
//        }
//        return true
        
        if identifier == "goToHome" {
            
            if let userName = userTextField.text, let userPass = passwordtextField.text {
            
                if userName == "test" && userPass == "test"{
                    return true
                }
            }
            return false
        }
        return true // para que me deje pasar a la proxima view si es que tengo varias segues y no se refiere a "goToHome"
    }
    
}
