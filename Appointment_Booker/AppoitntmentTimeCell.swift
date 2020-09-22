//
//  AppoitntmentTimeCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/21/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class AppoitntmentTimeCell: UICollectionViewCell {
    @IBOutlet weak var apptButton: AppointmentTimeButton!
    
    @IBAction func appointmentButtonPressed(_ button: AppointmentTimeButton) {
        
        button.startAnimation()
    }
}
