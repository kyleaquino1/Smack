//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Kyle on 7/27/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passTxt: UITextField!
    
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let pass = passTxt.text , passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                
                    if success {
                        print("Logged in user!", AuthService.instance.authToken)
                    }
                
                })
            }
            
        }
    }
    
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
        
    }
    
}
