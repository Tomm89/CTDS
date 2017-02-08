//
//  TableViewController1.swift
//  CTDS
//
//  Created by tom on 07.02.17.
//  Copyright © 2017 tom. All rights reserved.
//

import Foundation
import UIKit
import XLPagerTabStrip

class TableViewController1: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, IndicatorInfoProvider {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet var collectionCell: UICollectionViewCell!
    
    let reuseIdentifier = "cell"
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61", "61",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.register(NewCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "IGM")
    }
    
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! NewCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        
        cell.backgroundColor = UIColor.lightGray // make cell more visible in our example project
        
        return cell
    }
    
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
}
