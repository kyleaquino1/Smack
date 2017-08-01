//
//  ProfileVC.swift
//  Smack
//
//  Created by Kyle on 7/31/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    // Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userName.text = UserDataService.instance.name.uppercased()
        userEmail.text = UserDataService.instance.email
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
    }

    @IBAction func closeModalPressed(_ sender: Any) {
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
    }
    

}
