//
//  appointmentTimeButton.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/21/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit
import TransitionButton

class AppointmentTimeButton: TransitionButton {
    
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
        layer.backgroundColor = UIColor.red.cgColor
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
