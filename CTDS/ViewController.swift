//
//  ViewController.swift
//  CTDS
//
//  Created by tom on 06.02.17.
//  Copyright © 2017 tom. All rights reserved.
//

import UIKit
import DatePickerDialog

protocol CategorySelectionDelegate: class {
    func categorySelected(category: String)
}

class ViewController: UIViewController, CategorySelectionDelegate {
    internal func categorySelected(category: String) {

    }


    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelForSlider: UILabel!
    
    @IBOutlet weak var mapView: UIView!
    @IBOutlet weak var tableView: UIView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    let datePicker = UIDatePicker()
    
    var categorySelectionDelegate: CategorySelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        
        slider.addTarget (self,action: #selector(valueChange), for: UIControlEvents.valueChanged)

    }

    func createDatePicker() {
        
        // format for picker
        datePicker.datePickerMode = .date

        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        
        textField.inputAccessoryView = toolbar
        textField.inputView = datePicker

    }
    
    func donePressed() {
        
        // format date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        textField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    func valueChange(_ sender: UISlider) {
        
        
        let countmin = Int(Double(sender.value) * 14.4)
        
        let hours:Int = countmin/60
        
        let minutes = countmin - (hours*60)
        
        print("\(minutes)min")
        
        print("\(hours)hou")
        
        
        self.labelForSlider.text = "\(hours):\(minutes)"
        
    }
    
    @IBAction func viewChange(_ sender: UISegmentedControl) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            mapView.isHidden = true
            tableView.isHidden = false
        case 1:
            mapView.isHidden = false
            tableView.isHidden = true
        default:
            break;
        }
    }
    
}

