//
//  ViewController.swift
//  Swift_button
//
//  Created by IanFan on 2016/11/14.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.frame = CGRect(x: 10, y: 20, width: 100, height: 50)
        button.setTitle("Button", for: .normal);
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonTapped(sender: UIButton) {
        print("buttonTapped")
    }

}

