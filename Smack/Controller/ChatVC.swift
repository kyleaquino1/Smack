//
//  ChatVC.swift
//  Smack
//
//  Created by Kyle on 7/26/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    // Outlets
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
     
    }

}
