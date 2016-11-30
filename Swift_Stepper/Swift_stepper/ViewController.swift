//
//  ViewController.swift
//  Swift_stepper
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stepper:UIStepper!
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stepper = self.getStepper()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func stepperValueChanged(_ sender:UIStepper) {
        print(sender.value)
    }
    
    //MARK: - Factory
    
    func getStepper() -> UIStepper {
        if stepper == nil {
            let s = UIStepper()
            s.frame = CGRect(x: 10, y: 20, width: 100, height: 50)
            s.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
            s.minimumValue = 0
            s.maximumValue = 100
            self.view.addSubview(s)
            stepper = s
        }
        return stepper
    }

}

