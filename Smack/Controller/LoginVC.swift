//
//  LoginVC.swift
//  Smack
//
//  Created by Kyle on 7/27/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // Outlets
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = userNameText.text , userNameText.text != "" else { return }
        guard let pass = passwordText.text , passwordText.text != "" else { return }
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    
                    NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                    self.spinner.isHidden = true
                    self.spinner.stopAnimating()
                    self.dismiss(animated: true, completion: nil)
                    
                })
            } else {
                
            }
            
        }
        
    }
    

    @IBAction func closePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setupView() {
        spinner.isHidden = true
        userNameText.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
        passwordText.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
    }
    
}
