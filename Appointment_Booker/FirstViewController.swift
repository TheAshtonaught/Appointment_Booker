//
//  FirstViewController.swift
//  Appointment_Booker
//
//  Created by Ashton Morgan on 9/14/20.
//  Copyright © 2020 Ashton Morgan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let reuseIdentifier = "weekdayCell"
    //let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    @IBOutlet weak var weekdayCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }

}

// MARK: UICollectionViewDataSource
extension FirstViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        return cell
    }
}

// MARK: UICollectionViewFlowLayoutDelegate
extension FirstViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = view.frame.width / 3.5
        
        return CGSize(width: cellWidth, height: collectionView.frame.height)
    }
}
