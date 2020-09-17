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
    var collectionViewSize: CGSize = CGSize()
    @IBOutlet weak var weekdayCollectionView: UICollectionView!
    @IBOutlet weak var apptTimeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSize = apptTimeCollectionView.frame.size
    }

    

}

// MARK: UICollectionViewDataSource
extension FirstViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let tag = collectionView.tag
        
        switch tag {
        case weekdayCollectionViewTag:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: weekdayCellReuseIdentifier, for: indexPath)
            return cell
        case appTimeCollectionViewTag:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: apptTimeReuseIdentifier, for: indexPath)
            return cell
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
            return CGSize(width: view.frame.width / 3.5, height: collectionView.frame.height)
        } else {
            let paddingSpace: CGFloat = 10 * (2 + 1)
            let availableWidth = view.frame.width - paddingSpace
            let cellWidth = availableWidth / 2
            return CGSize(width: cellWidth, height: collectionView.frame.height / 8)
        }
    }
    
    
    
}
