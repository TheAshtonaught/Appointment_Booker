//
//  cardViewCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/23/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class CardViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //setupCardView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        //setupCardView()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        setupCardView()
    }
    
//    func setupCardView() {
//        cardView.layer.cornerRadius = 20.0
//        cardView.layer.shadowColor = UIColor.gray.cgColor
//        cardView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//        cardView.layer.shadowRadius = 20.0
//        cardView.layer.shadowOpacity = 0.7
//    }
    
}
