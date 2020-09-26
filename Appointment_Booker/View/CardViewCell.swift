//
//  cardViewCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/23/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class CardViewCell: UICollectionViewCell {
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupCard()
    }
    
    func setupCard() {
        contentView.layer.cornerRadius = 10
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
