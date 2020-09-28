//
//  UIView+Extension.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/27/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addGradientBackground(colors: [CGColor], locations: [NSNumber]) {
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = bounds
        gradientBackground.colors = colors
        gradientBackground.locations = locations
        layer.insertSublayer(gradientBackground, at: 0)
    }
    
    
}
