//
//  ViewController.swift
//  Swift_DatePicker
//
//  Created by IanFan on 2016/11/16.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myDatePicker:UIDatePicker!
    var myDateFormatter:DateFormatter!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myDateFormatter = self.getDateFormatter()
        myDatePicker = self.getDatePicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Command
    
    func datePickerValueChanged(_ sender:UIDatePicker) {
        let str:String = myDateFormatter.string(from: sender.date)
        print(str)
    }
    
    //MARK: - Factory
    
    func getDateFormatter() -> DateFormatter {
        if myDateFormatter == nil {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            dateFormatter.timeStyle = .short
            myDateFormatter = dateFormatter
        }
        return myDateFormatter
    }
    
    func getDatePicker() -> UIDatePicker {
        if myDatePicker == nil {
            let datePicker = UIDatePicker()
            
            //countDownTimer
//            datePicker.datePickerMode = .countDownTimer
//            datePicker.countDownDuration = 120
            
            //dateAndTime
            datePicker.datePickerMode = .dateAndTime
            
            datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
            
            self.view.addSubview(datePicker)
            myDatePicker = datePicker
        }
        return myDatePicker
    }
}

