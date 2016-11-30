//
//  ViewController.swift
//  Swift_slider
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mySlider:UISlider!

    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mySlider = self.getSlider()
        mySlider.setValue(50, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARL: - Command
    
    func sliderValueChanged(_ sender:UISlider) {
        let value = sender.value
        print("\(Int(value))")
    }

    //MARK: - Factory
    
    func getSlider() -> UISlider {
        if mySlider == nil {
            let slider = UISlider()
            slider.isContinuous = true
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.frame = CGRect(x: 10, y: 20, width: 300, height: 20)
            slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
            self.view.addSubview(slider)
            mySlider = slider
        }
        return mySlider
    }
    

}

