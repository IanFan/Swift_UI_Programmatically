//
//  ViewController.swift
//  Swift_switch
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mySwitch:UISwitch!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mySwitch = self.getSwitch()
        mySwitch.setOn(true, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Command
    
    func switchValueChanged(_ sender:UISwitch) {
        let value = sender.isOn
        print(value)
    }

    //MARK: - Factory
    
    func getSwitch() -> UISwitch {
        if mySwitch == nil {
            let s = UISwitch(frame: CGRect(x: 10, y: 20, width: 300, height: 50))
            s.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
            self.view.addSubview(s)
            mySwitch = s
        }
        return mySwitch
    }
    
}

