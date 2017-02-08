//
//  VC2.swift
//  
//
//  Created by tom on 07.02.17.
//
//

import UIKit
import XLPagerTabStrip

class VC2: ButtonBarPagerTabStripViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    
    let purpleInspireColor = UIColor(red:0, green:0, blue:0, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // change selected bar color
        //settings.style.buttonBarBackgroundColor = .lightGray
        settings.style.buttonBarItemBackgroundColor = .lightGray
        settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        self.buttonBarView.selectedBar.backgroundColor = UIColor.darkGray
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = UIColor(red: 138/255.0, green: 138/255.0, blue: 144/255.0, alpha: 1.0)
            newCell?.label.textColor = .white
           
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1")
        return [child_1, child_2]
    }



}
