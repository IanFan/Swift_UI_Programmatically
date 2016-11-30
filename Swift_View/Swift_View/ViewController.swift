//
//  ViewController.swift
//  Swift_View
//
//  Created by IanFan on 2016/11/17.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myView:UIView!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myView = self.getView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Factory
    
    func getView() -> UIView {
        if myView == nil {
            let v = UIView()
            v.frame = .init(x: 10, y: 20, width: 300, height: 300)
            v.layer.cornerRadius = 10.0
            v.layer.borderWidth = 5.0
            v.layer.borderColor = UIColor.black.cgColor
            v.backgroundColor = UIColor.lightGray
            self.view.addSubview(v)
            myView = v
        }
        return myView
    }

}

