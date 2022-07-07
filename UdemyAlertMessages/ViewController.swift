//
//  ViewController.swift
//  UdemyAlertMessages
//
//  Created by AHMET on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!  
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if userTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        } else if passwordTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        } else if passwordTextField.text != password2TextField.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords not match")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
     
        
    }
        
        func makeAlert(titleInput: String, messageInput:String) {
            let alert = UIAlertController(title: titleInput , message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton  = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
    }
    
    
    
 }

