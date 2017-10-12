//
//  DatepickerViewController.swift
//  MAPD714-Lesson6
//
//  Created by Mankiran kaur on 2017-10-11.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class DatepickerViewController: UIViewController {

    @IBOutlet weak var datepicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        datepicker.setDate(date as Date, animated: false)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func OnButtonPressed(_ sender: UIButton) {
        
        let date=datepicker.date
        let message = "the Date and Time you selected is \(date)"
        let alert = UIAlertController(
            title: "Date and time selected",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "Thats so true! ",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        
    }
    
    
}
