//
//  UpcommingAppointmentCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 10/18/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class UpcomingAppointmentCell: UICollectionViewCell {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUpcommingAppiontmentCell()
        
    }
}
