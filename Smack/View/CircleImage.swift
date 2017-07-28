//
//  CircleImage.swift
//  Smack
//
//  Created by Kyle on 7/27/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        setupView()
    }
}
