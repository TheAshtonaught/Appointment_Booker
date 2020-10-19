//
//  FirstViewController.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/14/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let weekdayCellReuseIdentifier = "weekdayCell"
    let cardViewCellReuseIdentifier = "cardViewCell"
    let appTimeCellReuseIdentifier = "apptTimeCell"
    let upcomingAppointmentCellReuseIdentifier = "UpcomingAppointmentCell"
    let weekdayCollectionViewTag = 0
    let cardViewCollectionViewTag = 1
    let appTimeCollectionViewTag = 2
    @IBOutlet weak var weekdayCollectionView: UICollectionView!
    @IBOutlet weak var apptTimeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }

}

// MARK: UICollectionViewDataSource
extension FirstViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Switch statement configures the amount of cells needed for each collection view
        switch collectionView.tag {
        case weekdayCollectionViewTag:
            return 7
        case cardViewCollectionViewTag:
            return 2
        case appTimeCollectionViewTag:
            return 5
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView.tag {
        case weekdayCollectionViewTag:
            guard let weekdayCell = collectionView.dequeueReusableCell(withReuseIdentifier: weekdayCellReuseIdentifier, for: indexPath) as? WeekdayCell else {
                return UICollectionViewCell()
            }
            // weekday cells contain icons that display each day of the week index path determines the icon for each
            // position in the colleciton view
            weekdayCell.setImage(indexPath: indexPath)
            return weekdayCell
        case cardViewCollectionViewTag:
            if (indexPath.row == 0) {
                guard let cardViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cardViewCellReuseIdentifier, for: indexPath) as? CardViewCell else {
                    return UICollectionViewCell()
                }
                return cardViewCell
            } else {
                guard let upcommingApptCell = collectionView.dequeueReusableCell(withReuseIdentifier: upcomingAppointmentCellReuseIdentifier, for: indexPath) as? UpcomingAppointmentCell else {
                    return UICollectionViewCell()
                }
                return upcommingApptCell
            }
            
        case appTimeCollectionViewTag:
            guard let appTimeCell = collectionView.dequeueReusableCell(withReuseIdentifier: appTimeCellReuseIdentifier, for: indexPath) as? ApptTimeCell else {
                
                return UICollectionViewCell()
            }
            
            return appTimeCell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    
}

// MARK: UICollectionViewFlowLayoutDelegate
extension FirstViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch collectionView.tag {
        case weekdayCollectionViewTag:
            return CGSize(width: view.frame.width / 4, height: collectionView.frame.height - 5)
        case cardViewCollectionViewTag:
            let cellWidth = view.frame.width - 40
            
            if (indexPath.row == 1) {
                // returns cell size for upcooming appoitnments cell
                return CGSize(width: cellWidth, height: collectionView.frame.height * 0.2)
            } else {
                // returns cell size for available appointments cell
                return CGSize(width: cellWidth, height: collectionView.frame.height * 0.5)
            }
            
        case appTimeCollectionViewTag:
            return CGSize(width: view.frame.width / 3, height: collectionView.frame.height - 5)
        default:
            return view.frame.size
        }
        
        
    }
    
    
    
}
