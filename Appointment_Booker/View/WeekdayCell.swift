//
//  WeekdayCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/20/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class WeekdayCell: UICollectionViewCell {
    let sundayIcon = UIImage(named: "Sunday_outline_black")
    let sundayIconFilled = UIImage(named: "Sunday_filled_black")
    let mondayIcon = UIImage(named: "Monday_outline_black")
    let mondayIconFilled = UIImage(named: "Monday_filled_black")
    let tuesdayIcon = UIImage(named: "Tuesday_outline_black")
    let tuesdayIconFilled = UIImage(named: "Tuesday_filled_black")
    let wednesdayIcon = UIImage(named: "Wednesday_outline_black")
    let wednesdayIconFilled = UIImage(named: "Wednesday_filled_black")
    let thursdayIcon = UIImage(named: "Thursday_outline_black")
    let thursdayIconFilled = UIImage(named: "Thursday_filled_black")
    let fridayIcon = UIImage(named: "Friday_outline_black")
    let fridayIconFilled = UIImage(named: "Friday_filled_black")
    let saturdayIcon = UIImage(named: "Saturday_outline_black")
    let saturdayIconFilled = UIImage(named: "Saturday_filled_black")
    
    
    @IBOutlet weak var weekdayImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setImage(indexPath: IndexPath) {
        let item = indexPath.item
        switch item {
        case 0:
            weekdayImage.image = tuesdayIcon
            weekdayImage.highlightedImage = tuesdayIconFilled
        case 1:
            weekdayImage.image = wednesdayIcon
            weekdayImage.highlightedImage = wednesdayIconFilled
        case 2:
            weekdayImage.image = thursdayIcon
            weekdayImage.highlightedImage = thursdayIconFilled
        case 3:
            weekdayImage.image = fridayIcon
            weekdayImage.highlightedImage = fridayIconFilled
        case 4:
            weekdayImage.image = saturdayIcon
            weekdayImage.highlightedImage = saturdayIconFilled
        case 5:
            weekdayImage.image = sundayIcon
            weekdayImage.highlightedImage = sundayIconFilled
        case 6:
            weekdayImage.image = mondayIcon
            weekdayImage.highlightedImage = mondayIconFilled
        default:
            weekdayImage.image = UIImage()
            
        }
        
    }
    
}
