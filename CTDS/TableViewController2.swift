//
//  TableViewController2.swift
//  CTDS
//
//  Created by tom on 07.02.17.
//  Copyright © 2017 tom. All rights reserved.
//

import Foundation
import UIKit
import XLPagerTabStrip

class TableViewController2: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, IndicatorInfoProvider {
    
    let reuseIdentifier = "cell"
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"]
    
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet var collectionCell: UICollectionViewCell!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        collection.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "All")
    }
    

    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
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

