//
//  UICollectionViewCell+Extension.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/30/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    func setupCardView() {
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
        let colors = [UIColor.white.cgColor, UIColor.white.cgColor, UIColor.red.cgColor]
        let locations: [NSNumber] = [0, 0.4, 0.6]
        contentView.addGradientBackground(colors: colors, locations: locations)

        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 10.0)
        self.layer.shadowRadius = 3.0
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
        self.layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
    func setupUpcommingAppiontmentCell() {
        contentView.layer.cornerRadius = 3
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
       

        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 10.0)
        self.layer.shadowRadius = 3.0
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
        self.layer.backgroundColor = UIColor.clear.cgColor
    }
    
    
}
