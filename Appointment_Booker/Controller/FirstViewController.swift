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
    let cardViewReuseIdentifier = "cardViewCell"
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
            guard let cardViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cardViewReuseIdentifier, for: indexPath) as? CardViewCell else {
                return UICollectionViewCell()
            }
            //cardViewCell.contentView.layer.cornerRadius = 10
            
            return cardViewCell
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
            return CGSize(width: view.frame.width / 4, height: collectionView.frame.height - 5)
        } else {
            let availableWidth = view.frame.width - 40
            let cellWidth = availableWidth
            return CGSize(width: cellWidth, height: collectionView.frame.height / 2)
        }
    }
    
    
    
}