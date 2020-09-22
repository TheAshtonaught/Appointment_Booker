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
    let apptTimeReuseIdentifier = "apptTimeCell"
    let weekdayCollectionViewTag = 0
    let appTimeCollectionViewTag = 1
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
        switch collectionView.tag {
        case weekdayCollectionViewTag:
            return 7
        case appTimeCollectionViewTag:
            return 20
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
            weekdayCell.setImage(indexPath: indexPath)
            return weekdayCell
        case appTimeCollectionViewTag:
            guard let appointmentTimeCell = collectionView.dequeueReusableCell(withReuseIdentifier: apptTimeReuseIdentifier, for: indexPath) as? AppoitntmentTimeCell else {
                return UICollectionViewCell()
            }
            return appointmentTimeCell
        default:
            print("Unable to get cell tag")
        }
        
        
        
        return UICollectionViewCell()
    }
    
    
}

// MARK: UICollectionViewFlowLayoutDelegate
extension FirstViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.tag == weekdayCollectionViewTag {
            return CGSize(width: view.frame.width / 3.5, height: collectionView.frame.height - 5)
        } else {
            let paddingSpace: CGFloat = 10 * (2 + 1)
            let availableWidth = view.frame.width - paddingSpace
            let cellWidth = availableWidth / 2
            return CGSize(width: cellWidth, height: collectionView.frame.height / 8)
        }
    }
    
    
    
}
