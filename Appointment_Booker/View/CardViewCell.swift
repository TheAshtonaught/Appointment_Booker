//
//  cardViewCell.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/23/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class CardViewCell: UICollectionViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    let appTimeCellReuseIdentifier = "apptTimeCell"

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupCardView()
        
    }
    
}

// Appointment Time cell Delegate
extension CardViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let appTimeCell = collectionView.dequeueReusableCell(withReuseIdentifier: appTimeCellReuseIdentifier, for: indexPath) as? ApptTimeCell else {
            
            return UICollectionViewCell()
        }
        
        return appTimeCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width / 3, height: collectionView.frame.height - 30)
    }
    
}
