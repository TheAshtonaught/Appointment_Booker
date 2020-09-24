//
//  CardContainer.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/24/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class CardContainer: UIView {

     override init(frame: CGRect) {
           super.init(frame: frame)
           
           setupCard()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)

           setupCard()
           
       }
    
    func setupCard() {
        
        layer.cornerRadius = 10.0
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 0.7
    }
       
       

}
