//
//  ViewController.swift
//  Swift_label
//
//  Created by IanFan on 2016/11/14.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.frame = CGRect(x: 10, y: 20, width: 100, height: 50)
        label.text = "Label"
        label.textColor = UIColor.black
        label.textAlignment = .center
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

